@extends('layout')
@section('head')
<script src="https://cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
@endsection
@section('main')
<main class="container" style="background-color: #fff">
   <center> <h1 style="padding-top:50px">Edit post</h1></center>
   @include('includes.flash-message')
<section id="contact-us">
    <div class="contact-form">
         <form action="{{route('blog.update',$post)}}" method="POST" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <label for="title">Title</label>
            <input type="title"id="title" name="title" value={{$post->title}} >
            @error('title')
            <p style="color: red ; margin-bottom:20px">{{$message}}</p>
            @enderror
        
            <label for="image">Image</label>
            <input type="file" id="image" name="image">
            @error('image')
            <p style="color: red ; margin-bottom:20px">{{$message}}</p>
            @enderror
        
            <label for="body">Body</label>
            <textarea  id="body" name="body" >{{$post->body}}</textarea>
            @error('body')
            <p style="color: red ; margin-bottom:20px">{{$message}}</p>
            @enderror
           
            <input type="submit"  value="submit"> </input>
        </form>
    </div>
</section>
</main>
@endsection
@section('script')
<script>
    CKEDITOR.replace( 'body' );
  </script>
@endsection
