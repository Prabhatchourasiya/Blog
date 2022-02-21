@extends('layout')


@section('header')
   <!-- header -->
   <header class="header" style="background-image: url({{asset("images/blogging1.jpg")}});">
    <div class="header-text">
      <h1>Blog</h1>
      <h4>Express Yourself to the world</h4>
    </div>
    <div class="overlay"></div>
  </header>
@endsection


@section('main')
<!-- main -->
<main class="container">
  <center><h2 class="header-title">Latest Blog Posts</h2></center>
  <section class="cards-blog latest-blog">
     
    @foreach ($posts as $post)

    <div class="card-blog-content">
     <img src="{{asset($post->imagePath)}}" alt="" />
    
      {{$post->created_at->diffForHumans()}}
       <span>Written By {{$post->user->name}}</span>
     
     <h4>
       <a href="{{route('blog.show',$post)}}">{{$post->title}}</a>
     </h4>
   </div>
 
    @endforeach
    
  </section>
  </main>
  
  
@endsection






















