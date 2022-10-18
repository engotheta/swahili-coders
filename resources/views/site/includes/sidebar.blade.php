
<div class="d-none d-md-block sticky-top " style="z-index:0 !important">
  <div class="pressside mb-3 has-shifting-underline">
    <div class="pressside-heading text-primary border-bottom-fadeddd p-1 px-2">
      <h5 class="pb-3 pb-lg-3 section-heading"> 
        <a  href="{{url('/news')}}" class=" pb-2 text-uppercase text-primary hover-text-primary 
         d-block position-relative"> 
          <!-- <i class="fa fa-cog pr-2  align-self-center"></i>  -->
          <span class="d-inline-block py-2 position-relative text-bold text-primary">
            <span class="px-2222">{{label('lbl_news_and_events')}}</span>
          </span>
          <div class="d-flex w-100 position-absolute bottom-left">
            <div class="shifting-underline-1 padding-1 bg-secondary"></div>
            <div class="shifting-underline-2 padding-1 bg-primary"></div>
          </div>
        </a>
      </h5>
    </div>
  
    <div class="pressside-body p-2  ">
      @foreach($news_and_events as $key => $news)
        @break($key > 1)
        <a href="{{url('/news/'.$news->slug)}}" class="col mb-1 cursor-pointer zoom-container show-more-content-news p-0 d-flex border-bottom box-shadow  bg-white last-no-border align-items-center "  style="min-height:140px"> 
          <div class="col-12 col-md-4 p-2 px-lg-3 text-center d-flex flex-column justify-content-center pr-0 border-rightt " >
            <div class="border-faded p-1">
              <div class="overflow-hidden box-shadow-slight">
                <div class="full-hd-container  image my-0 hover-text-primary background-image" 
                  style="background-image:url('{{asset('/uploads/news/'.$news->photo_url)}}'); " >  
                  <div class="dark-overlay"></div>
                </div>
              </div>
            </div>
           
          </div>
          <div class="col-12 col-md-8 pl-3 "> 
            {{-- <h6> <span class="text-bold">{{str_limit($news->title,40)}}</span> </h6>  --}}
            <div class=""><span class="small text-faded ">{!! date('d M Y', strtotime($news->created_at)) !!}</span></div>
            <div class="hover-text-primary ">{{str_limit(strip_tags($news->title),60)}}</div>
          </div>
        </a>
      @endforeach
    </div>
  
    <div class="pressside-footer  p-2 px-md-2 d-flex justify-content-end">
        <a href="{{url('/news')}}" class="readmore bg-white border d-inline-block px-3 py-2 rounded-mediumm  box-shadow-slight text-primary hover-bg-primary cursor-pointer  ">
          <span>{{label('lbl_news')}} </span>
          <i class="fa fa-chevron-right"></i>
        </a> 
        {{-- <a href="{{url('/eventes')}}" class="readmore bg-white border d-inline-block px-3 py-2 rounded-mediumm  box-shadow-slight text-primary hover-bg-primary cursor-pointer  ">
          <span>{{label('lbl_events')}} </span>
          <i class="fa fa-chevron-right"></i>
        </a>      --}}
    </div>
  
  </div>
  
  <div class="pressside  has-shifting-underline">
  
    <div class="pressside-heading  p-2 text-primary border-bottommm">
      <h5 class="pb-3 pb-lg-3 section-heading"> 
        <a  hreffff="{{url('/publications')}}" 
        class="  pb-2  text-uppercase text-primary hover-text-primary bg-white-transparent-hover-secondary
         d-block position-relative"> 
          <!-- <i class="fa fa-cog pr-2  align-self-center"></i>  -->
          <span class="d-inline-block py-2 position-relative text-bold text-primary">
            <span class="px-2222">{{label('lbl_projects')}}</span>
          </span>
          <div class="d-flex w-100 position-absolute bottom-left">
            <div class="shifting-underline-1 padding-1 bg-secondary"></div>
            <div class="shifting-underline-2 padding-1 bg-primary"></div>
          </div>
        </a>
      </h5>
    </div>
  
    <div class="pressside-body border-leftt p-2">
        <div class="d-flex flex-column h-100 rounded-slightt overflow-hidden">
          @foreach($projects as $key => $project)
            @break($key > 2)
            <div class="col px-0 border-faded mb-1 bg-white-transparent py-0 my-0 " style="min-height:80px">
              <a href="{{asset('projects/'.$project->slug)}}" target="_blank" 
                class="row h-100 mx-0 cursor-pointer bg-gradient-white-secondary 
                box-shadow-slight hover-bg has-hover-bounce has-hover-text-primary has-hover-text-secondary">
                <div class=" col-3  h-100 text-center border-right border-color-black">
                  <div class=" text-primary h-100  d-flex justify-content-center position-relative align-items-center " >
                    <div class="p-2222 round h-100 d-flex justify-content-center position-relative align-items-center box-40">
                      <div class="ring d-flex position-absolute justify-content-center align-items-center m-auto  box-50"  >
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 91.6 105.77"><polygon class="stroke-primary" points="89.1 77.89 89.1 27.89 45.8 2.89 2.5 27.89 2.5 77.89 45.8 102.89 89.1 77.89"/></svg>
                      </div>
                      <div class="ring d-flex position-absolute justify-content-center align-items-center m-auto box-40"  >
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 86.6 100"><polygon class="fill-primary" points="86.6 75 86.6 25 43.3 0 0 25 0 75 43.3 100 86.6 75"/></svg>
                      </div>
                      <img src="{{asset('uploads/projects/'.$project->icon)}}" class="hover-bounce white-icon position-relative z-index-2" style="width: 20px; height:auto">
                    </div> 
                  </div>
                </div>
                <div class="col-9 pl-3 text-left h-100 d-flex flex-column justify-content-center"> 
                  <div class="hover-text-primary ">{{str_limit($project->title,50)}} </div>
                </div>
              </a>
            </div>
          @endforeach
        </div>
    </div>
    <div class="pressside-footer px-2 d-flex justify-content-end">
      <a href="{{url('/projects')}}" class="readmore border d-inline-block px-3 py-2 rounded-mediumm  box-shadow-slight text-primary hover-bg-primary cursor-pointer  ">
        <span> {{label('lbl_view_all')}}</span>
        <i class="fa fa-chevron-right"></i>
      </a>    
    </div>
  </div>

</div>