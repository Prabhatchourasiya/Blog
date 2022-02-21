<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class BlogController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show']);
    }

    public function index(Request $request)
    {
        if ($request->search) {
            $posts = Post::where('title', 'like', '%' . $request->search . '%')
                ->orWhere('body', 'like', '%' . $request->search . '%')->latest()->paginate(4);
        } elseif ($request->category) {
            $posts = Category::where('name', $request->category)->firstOrFail()->posts()->paginate(3)->withQueryString();
        } else {
            $posts = Post::latest()->paginate(6);
        }

        $categories = Category::all();

        return view('blogPost.blog', compact('posts', 'categories'));
    }

    // public function show($slug){
    //     $post=Post::where('slug',$slug)->first();
    //     return view('blogPost.single-blog-post', compact('post'));
    // }

    //using route model binding
    public function show(Post $post)
    {
        $category = $post->category;
        $relatedPosts = $category->posts()->where('id', '!=', $post->id)->latest()->take(3)->get();
        return view('blogPost.single-blog-post', compact('post', 'relatedPosts'));
    }

    public function create()
    {
        $categories = Category::all();
        return view('blogPost.create-blog-post', compact('categories'));
    }

    public function store(Request $request)
    {
        // $requestALlInput=$request->all();  to access all inputs
        // $title=$request->input('title');   to access single input

        $request->validate([
            'title' => "required",
            'image' => "required|image",
            'body' => "required",
            'category_id' => "required"

        ]);

        $title = $request->input('title');
        $category_id = $request->input('category_id');

        if (Post::latest()->first() !== null) {
            $postId = Post::latest()->first()->id + 1;
        } else {
            $postId = 1;
        }

        $slug = Str::slug($title, '-') . '-' . $postId;
        $user_id = Auth::user()->id;

        //file upload
        $imagePath = 'storage/' . $request->file('image')->store('postImages', 'public');
        $body = $request->input('body');

        $post = new Post();
        $post->title = $title;
        $post->category_id = $category_id;
        $post->slug = $slug;
        $post->user_id = $user_id;
        $post->imagePath = $imagePath;
        $post->body = $body;
        $post->save();

        return redirect()->back()->with('status', 'post created successfully');
    }


    public function edit(Post $post)
    {
        if (auth()->user()->id !== $post->user->id) {
            abort(403);
        }
        return view('blogPost.edit-blog-post', compact('post'));
    }

    public function update(Request $request, Post $post)
    {
        if (auth()->user()->id !== $post->user->id) {
            abort(403);
        }
        $request->validate([
            'title' => "required",
            'image' => "required|image",
            'body' => "required"

        ]);

        $title = $request->input('title');
        $postId = $post->id;
        $slug = Str::slug($title, '-') . '-' . $postId;

        //file upload
        $imagePath = 'storage/' . $request->file('image')->store('postImages', 'public');
        $body = $request->input('body');

        $post->title = $title;
        $post->slug = $slug;
        $post->imagePath = $imagePath;
        $post->body = $body;


        $post->save();

        return redirect()->back()->with('status', 'post updated successfully');
    }

    public function destroy(Post $post)
    {
        $post->delete();
        return redirect()->back()->with('status', 'post deleted successfully');
    }
}