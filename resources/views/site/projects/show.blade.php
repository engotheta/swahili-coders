@extends('site.inner')
@section('title')
{!! $project->title !!}
@endsection

@section('breadcrumb')
<li class="breadcrumb-item"><a href="{{url('projects')}}">{{label('lbl_projects')}}</a></li>
<li class="breadcrumb-item active" aria-current="page">{!! str_limit(strip_tags($project->title) ,20) !!}</li>
@endsection


@section('page_content')

<div class="about-page  main-container container-fluid bg-white">
    <div class="col-12">
        
        <div class="col-12 py-3">
            <div class="row">
                <div class="col-lg-8 page-content my-2">

                    <div class="row pr-md-5 has-shifting-underline">
                        <div class="col-12 py-1 px-0">
                            <h5 class="pb-2 position-relative page-title text-uppercase text-primary hover-text-primary"> 
                                <span class="d-inline-block py-2 position-relative text-bold text-primary">
                                  <span class="px-2222">{!! label('lbl_projects') !!}</span>
                                </span>
                                <div class="d-flex w-100 position-absolute bottom-left">
                                <div class="shifting-underline-1 padding-1 bg-secondary"></div>
                                <div class="shifting-underline-2 padding-1 bg-primary"></div>
                                </div>
                            </h5>
                        </div>
                        {{-- <div class="col-12 px-0 py-3 border-bottom">
                            <div class="row mx-0">
                                <span class="pr-3 bold-600 d-inline-block">
                                    <span class="fa fa-calendar mr-1"></span> 
                                    {!! date('d M, Y', strtotime($project->created_at)) !!}
                                </span>
                            </div>
                        </div> --}}
                        <div class="col-12 px-0 mt-2 pt-3">
                                <div class="overflow-hidden full-hd-container bg-white position-relative zoom-container">
                                    <div class="p-2  border-faded h-100 w-100 position-absolute top-left">
                                        <div class="overflow-hidden h-100 w-100 position-relative"> 
                                            <div class="background-image image h-100 w-100  " 
                                            style="background:url({{asset('uploads/projects/'.$project->photo_url)}})"> </div>
                                            <div class="dark-overlay"></div>
                                            
                                            <div class="parallax-banner position-absolute top-left h-100 w-100 white-iconnn" data-offset="500px" data-rate="0.7" 
                                                style="background:url({{asset('site/images/svgs/scattered-forcefields-small.svg')}}); 
                                                background-size:cover; background-repeat: repeat; z-index:0; opacity:0.5">
                                            </div>

                                            <div class="h-100 w-100 position-absolute top-left faded bg-primary" style="opacity:0.4"></div>
                                            <div class="h-100 w-100 top-left position-absolute flex-center" style="opacity:0.9">
                                                <div class="d-inline-block" style="transform: translateY(-50px)">
                                                    <img class="white-icon d-inline-block" style="width:100px; height:auto" src="{{asset('uploads/projects/'.$project->icon)}}">
                                                    <h2 class="d-inline-block mt-3 text-white" style="transform: translateY(100px)"> {!! $project->title !!}</h2>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            {{-- <div class="p-2 border-faded">
                                <img class="img-fluid" src="{{asset('uploads/projects/'.$project->photo_url)}}" alt="{{$project->title}}">
                            </div> --}}
                            <div class="rich-text py-2 mt-4">
                                {!! $project->content !!}
                            </div>
                        </div>
                        
                    </div>

                </div>
                <div class="col-lg-4 px-0 mt-2">
                    @include('site.includes/sidebar')
                </div>
            </div>
        </div>

    </div>

</div>

@stop