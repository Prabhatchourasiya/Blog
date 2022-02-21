
@extends('layout')
@section('main')
   <!-- main -->
   <main class="container">
    <h2 class="header-title">All Blog Posts</h2>
    @include('includes.flash-message')
    <div class="searchbar">
      <form action="">
        <input type="text" placeholder="Search..." name="search" />

        <button type="submit">
          <i class="fa fa-search"></i>
        </button>

      </form>
    </div>


    <div id="menu-outer">
      <div class="table">
        <ul id="horizontal-list">
          @foreach ($categories as $category)  
         <li><button type="button" ><a href="{{route('blog.index', ['category' => $category->name ])}}">{{ $category->name }}</a></button> </li>
          @endforeach
        </ul>
      </div>
    </div>



    <section class="cards-blog latest-blog">


   @forelse($posts as $post)

   <div class="card-blog-content">
    @auth
        @if (auth()->user()->id === $post->user->id)
            <div class="post-buttons">
                  <form action="{{ route('blog.destroy', $post) }}" method="post">
                    @csrf
                    @method('delete')
                    <button type="submit" ><a href="{{route('blog.edit', $post)}}">Edit</a></button>
                    <button type="submit" style="border: 1px;background-color:red;color:white;padding:10px">Delete</button>

                </form>
            </div>
        @endif
    @endauth

    <img src="{{asset($post->imagePath)}}" alt="" />
    
     {{$post->created_at->diffForHumans()}}
      <span>Written By {{$post->user->name}}</span>
    
    <h4>
      <a href="{{route('blog.show',$post)}}">{{$post->title}}</a>
    </h4>
  </div>
   @empty
   <p>Sorry, no blog related to that search.</p>
   @endforelse


    </section>


{{$posts->links()}}
  </main>
</div>

@endsection

















