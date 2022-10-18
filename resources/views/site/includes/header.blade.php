

<header class="col-12 px-0 position-relative position-lg-absolute top-left "  style="z-index:999;">
  <div class="faded h-100 w-100 position-absolute top-left parallax-banner" 
    style=" background:urllll({{asset('site/images/flag.jpg')}}); background-size: cover; background-position: center;"
  data-offset="80px"></div>



  {{-- <div class="bg-secondary position-relative" style="height:2px; z-index: 3;"></div> --}}
  <!-- top bottom -->
  <div class="w-100 top-left mx-0  border-bottom-secondaryyy position-fixed border-width-2">
    <div class="col-md-12 py-lg-1 col-xs-12 main-menu  text-dark d-flex border-top border-color-secondary position-relative active justify-content-center align-items-center"
    style="--order:3">
      <div class="h-100 w-100 header-bg bg-white box-shadow  position-absolute"></div>
      <!-- HEADER -->
      <div class="ml-xl-5 d-none d-xl-flex position-relative">
        <a href="{{ url('/') }}">
          <img src="{{asset('site/images/logo.png')}}" alt="HST Logo" class="mx-auto img-fluid" style="height: 70px; width:auto" />
        </a>
      </div> 
 
      <nav class="col navbar main-navigation medium-text p-0 fade-on mx-lg-5 justify-content-start align-items-center" id='cssmenu' >
        {{-- <div id="head-mobile"></div> --}}
        <div class="mr-4 mr-xl-0 justify-content-between text-hover-secondary text-white d-flex align-items-center d-xl-none">
          <a href="{{ url('/') }}">
            <img src="{{asset('site/images/logo.png')}}" alt="HST Logo" class="mx-auto img-fluid" style="height: 70px; width:auto" />
          </a>
          
          <span class="d-flex align-items-center h-100  "> 
            <span class="menu-button"> <i class=" menu-icon fa fa-bars mr-2 " style="font-size: 25px;"></i> </span>
            <div class=" search-toggle cursor-pointer  text-white text-hover-secondary d-flex align-items-center p-3"
              style="height:45px; right:0">
              <span class="mt-0 pt-0"><i class="fas fa-search fa-1x"  style="font-size: 20px;"></i></span>
            </div>
          </span>
        </div>
        <ul id="mainMenu" class="m-0 capitalize-parent-itemsss d-xl-flex justify-content-end text-primary">
          <li class=""><a class="nav-link" href="{{ url('/') }}"> {{label('lbl_home')}} </a></li>
          {!! App\Models\MenuItem::getMenu('main_nav') !!}
          <li class="list-inline-item px-2 @if(curlang() == '_en') d-none @endif  ">
            <a title="Switch Language to English" href="{{ url('language/en') }}">
              EN
            </a>
          </li>
          <li class="list-inline-item pr-2 @if(curlang() == '_sw') d-none @endif">
            <a title="Switch Language to swahili" href="{{ url('language/sw') }}">
              SW
            </a>
          </li>   
        </ul>
      </nav>
      <div class="position-absolute d-none d-xl-flex search-toggle cursor-pointer  text-white text-hover-secondary align-items-center p-3"
       style="height:45px; right:0">
       <span class="mt-0 pt-0"><i class="fas fa-search fa-1x"></i></span>
      </div>
      <!-- /HEADER -->
      <div class="search-form-container move-left position-absolute top-left w-100 overflow-hidden" style="z-index: 9999999;">
        <div class="search-form position-absolute top-left h-100 w-100 px-1 p-1  bg-primary box-shadow d-flex 
        align-items-center justify-content-center">
        <form  method="GET" action="{{url('search')}}" autocomplete="off"
          class=" d-flex justisty-content-between rounded-mediumm overflow-hiddenn py-0 mx-auto position-relative" action="">
            <div class="h-100 w-100 rounded-large border bg-white position-absolute"></div>
            <div class="h-100 w-100  d-flex justisty-content-between  z-index-2">
              <input class="form-control border-0 bg-none text-primary " type="search" placeholder="Search" aria-label="Search" name="q"
                @if(isset($term)) value="{{$term}}"@endif/>
                <span class="d-flex">
                  <button type="submit" class="search-icon btn bg-white-transparentt" name="button">
                    <i class="fas fa-search fa-1x text-primary"></i>
                  </button>
                  <button type="button" class=" search-toggle border-left fadedd btn bg-white-transparentt" name="button">
                    <i class="fas fa-eye-slash fa-1x text-primary"></i>
                  </button>
                </span>
            </div>
          </form>
        </div>
      </div>
    </div>
    {{-- <div class="col-12 d-lg-none border-bottom-primary"></div> --}}
  </div>
  <div class="bg-white position-absolute z-index-2" style="height: 2px; bottom:0"></div>
  <!-- /top bottom -->

</header>
