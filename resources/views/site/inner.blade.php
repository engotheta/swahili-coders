@extends('site.layout')

@section('content')

  <div class="pages-decorater-top bg-gradient-secondary-transparent position-relative">
    
    
    
    <div class="container-fluid px-lg-5 breadcumb-banner 
     h-100 w-100 top-left position-absolute  parallax-banner faded-banner"  
     @if($background) style="background-image:url({{asset($background->main_bg)}}); 
     background-repeat: no-repeat; background-size: cover;" @endif
     data-offset="270px" data-rate="0.3">
    </div>
    <div class="h-100 w-100 top-left bg-gradient-transparent-light position-absolute border-bottom" style="opacity: 0.9"></div>
    <div class="h-100 w-100 top-left bg-gradient-primary-transparent position-absolute" style="opacity: 0.3"></div>
    
    

    <div class="parallax-banner position-absolute top-left h-100 w-100 white-iconnn" data-offset="850px" data-rate="0.6" 
      style="background:url({{asset('site/images/svgs/scattered-forcefields-small.svg')}}); 
      background-size:cover; background-repeat: repeat; z-index:0; opacity:0.5">
    </div>

    <div class="parallax-banner position-absolute top-left h-100 w-100 white-iconnn" data-offset="500px" data-rate="0.7" 
      style="background:url({{asset('site/images/svgs/scattered-forcefields-small.svg')}}); 
      background-size:cover; background-repeat: repeat; z-index:0; opacity:0.5">
    </div>


    <div id="particles-js" class="h-100 w-100 top-left position-absolute"></div>
  </div>

  <div class="about-page main-container container pages-decorater-bottom rounded-0 bg-white p-md-4 ">
    <div class="container breadcumb-banner small  p-3">
      <ol class="breadcrumb fa bg-transparent text-dark bold-600 mb-0">
        <li class="breadcrumb-item"><a href="{{ url('/') }}"><span class="fas fa-home d-none"></span></a>Home</li>
        @yield('breadcrumb')
      </ol>
    </div>

    <div @if($preference->show_loading) class="page-content-container d-none move-up " style="--order:2" @endif>
        @yield('page_content')
    </div>

  </div>

@stop
