

<header class="col-12 px-0 position-relative position-lg-absolute top-left bg-dark-faded "  style="z-index:999;">
  <div class="h-100 w-100 navigation-bg-faded bg-primary position-absolute"></div>
  <div class="faded h-100 w-100 position-absolute top-left parallax-banner" 
    style=" background:urllll({{asset('site/images/flag.jpg')}}); background-size: cover; background-position: center;"
  data-offset="80px"></div>
  {{-- <div class="header-bg h-100 w-100 position-absolute top-left"></div>
  <div class="header-bg-2 h-100 w-100 position-absolute top-left"></div> --}}

  <!-- top navbar -->
  <div class="col-12  bg-dark-fadeddd ">
    <div class="container px-0">
      <div class="row top_nav px-0">
        <div class="col-12 px-0  mx-auto justify-content-end align-items-center px">
          <div class="d-flex always-white-text text-hover-secondary d-none text-bold justify-content-end padd-items-h-5 align-items-center" >
            <ul class="d-none  my-0 d-lg-flex align-items-center ">
              {!! App\Models\MenuItem::getMenu('top_menu') !!}
            </ul>
            <ul class=" my-0 d-flex align-items-center ">
              <li class="list-inline-item px-2 @if(curlang() == '_en') d-none @endif  ">
                <a title="Switch Language to English" href="{{ url('language/en') }}">
                  ENGLISH
                </a>
              </li>
              <li class="list-inline-item pr-2 @if(curlang() == '_sw') d-none @endif">
                <a title="Switch Language to swahili" href="{{ url('language/sw') }}">
                  KISWAHILI
                </a>
              </li>   
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /top navbar -->

  <!-- top middle -->
  <div class="px-0 pb-2 position-relative ">
    <div class="col-md-12 mt-0 py-111 top-middle   ">
      <div class="container px-0 position-relative">
        <div class="row">
          <div class="col-3 col-lg-2 float-left text-left my-auto">
            <a href="{{ url('/') }}">
              <img src="{{asset('site/images/logo.png')}}" alt="HST Logo" class="mx-auto img-fluid" style="width: 70px" />
            </a>
          </div>
          <div class="col-6 col-lg-8 text-center my-auto  text-white">
            <div class="p-2 px-4">
              <h5 class="mb-1 text-shadow-lighttt d-none d-md-block font-weight-bold align-items-center ">
                {{ label("lbl_site_subtitle")}}
              </h5>
              <h3 class="mb-0 text-shadow-lightttt text-center text-bold align-items-center">            
                {{ label("lbl_site_title")}}
              
              </h3>
            </div>
          </div>
          <div class="col-3 col-lg-2  float-right text-right my-auto d-flex justify-content-end align-items-center">       
            <a href="{{ url('/') }}"><img src="{{asset('site/images/emblem.png')}}" alt="TIRA Logo" class="mx-auto img-fluid fade-on" style="width:65px"/></a>
          </div>
        </div>
      </div>
    </div>
  </div>
   <!-- top middle -->

  {{-- <div class="bg-secondary position-relative" style="height:2px; z-index: 3;"></div> --}}
  <!-- top bottom -->
  <div class="col-12  px-0 bg-dark-faded top-fixed border-bottom-secondaryyy border-width-2" styleee="padding-bottom:2px; margin-bottom:2px;">
    <div class="col-md-12 col-xs-12 main-menu  text-dark d-flex border-top border-color-secondary position-relative active justify-content-center align-items-center"
    style="--order:3">
      <div class="h-100 w-100 navigation-bg bg-primary-dark position-absolute"></div>
      <!-- HEADER -->
      <nav class="navbar main-navigation medium-text p-0 fade-on mx-lg-5 justify-content-start align-items-center" id='cssmenu' >
        <div id="head-mobile"></div>
        <div class="menu-button text-hover-secondary text-white d-flex align-items-center d-lg-none">
          <i class="menu-icon fa fa-bars mr-2" style="font-size: 25px;"></i> 
          <span class=" bold-600">{{label('lbl_menu')}}</span>
        </div>
        <ul class="m-0 capitalize-parent-itemsss d-lg-flex">
          <li class=""><a class="nav-link" href="{{ url('/') }}"> {{label('lbl_home')}} </a></li>
          {!! App\Models\MenuItem::getMenu('main_nav') !!}
        </ul>
      </nav>
      <div class="position-absolute search-toggle cursor-pointer top-right text-white text-hover-secondary d-flex align-items-center p-3" style="height:45px">
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
    <div class="col-12 d-lg-none border-bottom-primary"></div>
  </div>
  <div class="bg-white position-absolute z-index-2" style="height: 2px; bottom:0"></div>
  <!-- /top bottom -->

</header>
