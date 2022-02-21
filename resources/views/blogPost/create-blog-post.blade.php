@extends('layout')
@section('head')
<script src="https://cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
@endsection
@section('main')
<main class="container" style="background-color: #fff">
   <center> <h1 style="padding-top:50px">Create new post</h1></center>
   @include('includes.flash-message')
<section id="contact-us">
    <div class="contact-form">
         <form action="{{route('blog.store')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <label for="title">Title</label>
            <input type="title"id="title" name="title" value={{old('title')}} >
            @error('title')
            <p style="color: red ; margin-bottom:20px">{{$message}}</p>
            @enderror
        
            <label for="image">Image</label>
            <input type="file" id="image" name="image">
            @error('image')
            <p style="color: red ; margin-bottom:20px">{{$message}}</p>
            @enderror

            <!-- Drop down -->
            <label for="categories">Choose a category:</label>
            <select name="category_id" id="categories">
                <option selected disabled>Select option </option><br>
                @foreach ($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                @endforeach
            </select>
            @error('category_id')
                {{-- The $attributeValue field is/must be $validationRule --}}
                <p style="color: red; margin-bottom:25px;">{{ $message }}</p>
            @enderror
            <br>
            <br>
        
            <label for="body">Body</label>
            <textarea  id="body" name="body" >{{old('body')}}</textarea>
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
