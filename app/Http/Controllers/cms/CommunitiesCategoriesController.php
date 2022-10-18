<?php namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Community;
use App\Models\CommunityCategory;
use App\Models\Documents;
use App\Models\SpecialPage;
use App\Models\Service;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use DB;

class CommunitiesCategoriesController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $categories = CommunityCategory::orderBy('id', 'DESC')->get();
        $specials = SpecialPage::pluck('title_en', 'id');
        $services = Service::pluck('title_en', 'id');
        return view('cms.community-categories.index', compact('categories', 'specials', 'services' ));
    }

    public function show($slug)
    {
        $selected_category = CommunityCategory::findBySlug($slug);
        $categories = CommunityCategory::orderBy('id', 'DESC')->where('id','!=',$selected_category->id)->get();
        $specials = SpecialPage::pluck('title_en', 'id');
        $services = Service::pluck('title_en', 'id');
       
        return view('cms.community-categories.show', compact('categories','selected_category','specials', 'services'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cms.community-categories.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(CommunityCategory::$rules);

        $inputs = $request->except('banner_img','photo_url');

        if($request->get('banner_img')){
            $image = $request->get('banner_img'); // base64 image 
        
            $img = preg_replace('/^data:image\/\w+;base64,/', '', $image);
            $type = explode(';', $image)[0];
            $type = explode('/', $type)[1]; // png or jpg etc

            $image = str_replace('data:image/'.$type.';base64,', '', $image);
            $image = str_replace(' ', '+', $image);

            $imageName = md5(date('Ymdhis'));
            $imageName = $imageName.".".$type;

            $path = public_path().'/uploads/banners/';

            if(! \File::exists($path)):  \File::makeDirectory($path, $mode = 0644, true, true); endif;

            \File::put($path.$imageName, base64_decode($image));

            $inputs['banner_img'] = $imageName;
        }

   

        if ($request->hasFile('photo_url'))
		{

			if ($request->file('photo_url')->isValid())
			{
			    $file_url_en = $request->file('photo_url');

				$doc_name_en = time() . '-' .$file_url_en->getClientOriginalName();

				$pathName = '/uploads/communities/';

				$destinationPath = public_path().$pathName;

				$file_url_en->move($destinationPath, $doc_name_en);

				$inputs['photo_url'] = $pathName.$doc_name_en;
			}
		}


        $category = CommunityCategory::create($inputs);

        if($category){
            return redirect()->route('cms.community-categories.index')->with('status', 'success');
        }
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = CommunityCategory::find($id);
        $specials = SpecialPage::pluck('title_en', 'id');

        return view("cms.community-categories.edit", compact('category','specials'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate(CommunityCategory::$rules);

        $category = CommunityCategory::find($id);

        $inputs = $request->except('banner_img','photo_url');

        if($request->get('banner_img')){

            if(is_file(public_path().'/uploads/banners/'.$category->banner_img) and file_exists(public_path().'/uploads/banners/'.$category->banner_img)){
                unlink(public_path().'/uploads/banners/'.$category->banner_img);
            }

            $image = $request->get('banner_img'); // base64 image
            $img = preg_replace('/^data:image\/\w+;base64,/', '', $image);
            $type = explode(';', $image)[0];
            $type = explode('/', $type)[1]; // png or jpg etc

            $image = str_replace('data:image/'.$type.';base64,', '', $image);
            $image = str_replace(' ', '+', $image);
            $imageName = md5(date('Ymdhis')).'.'.$type;

            $path = public_path().'/uploads/banners/';

            if(! \File::exists($path)):  \File::makeDirectory($path, $mode = 0644, true, true); endif;

            \File::put($path.$imageName, base64_decode($image));

            $inputs['banner_img'] = $imageName;

        }


        if ($request->hasFile('photo_url'))
		{

			if ($request->file('photo_url')->isValid())
			{
			    $file_url_en = $request->file('photo_url');

				$doc_name_en = time() . '-' .$file_url_en->getClientOriginalName();

				$pathName = '/uploads/communities/';

				$destinationPath = public_path().$pathName;

				$file_url_en->move($destinationPath, $doc_name_en);

				$inputs['photo_url'] = $pathName.$doc_name_en;

				if(is_file(public_path().$category->photo_url) && file_exists(public_path().$category->photo_url)){
					unlink(public_path().$category->photo_url);
				}

			}
		}

        $category->update($inputs);

        if($category){
            return back()->with('status', 'success');
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = CommunityCategory::find($id);
        $documents = Documents::where('category_id','=',$id)->get();

        if(is_file(public_path().'/uploads/banners/'.$category->banner_img) and file_exists(public_path().'/uploads/banners/'.$category->banner_img)){
            unlink(public_path().'/uploads/banners/'.$category->banner_img);
        }

        foreach($documents as $document){
            if(is_file(public_path().'/uploads/documents/'.$document->file_en) && file_exists(public_path().'/uploads/documents/'.$document->file_en)){
                unlink(public_path().'/uploads/documents/'.$document->file_en);
            }

            if(is_file(public_path().'/uploads/documents/'.$document->file_sw) && file_exists(public_path().'/uploads/documents/'.$document->file_sw)){
                unlink(public_path().'/uploads/documents/'.$document->file_sw);
            }
        }
        $category->licensedEntities()->delete();
        $category->delete();

        if($category){
            return back()->with('status', 'success');
        }
    }

}
