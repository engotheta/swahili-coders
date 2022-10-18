<?php namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\LicensedEntity;
use App\Models\LicensedEntityCategory;
use App\Models\Documents;
use App\Models\SpecialPage;
use App\Models\Service;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use DB;

class LicensedEntitiesCategoriesController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $categories = LicensedEntityCategory::orderBy('id', 'DESC')->get();
        $specials = SpecialPage::pluck('title_en', 'id');
        $services = Service::pluck('title_en', 'id');
        return view('cms.licensed-entity-categories.index', compact('categories', 'specials', 'services' ));
    }

    public function show($slug)
    {
        $selected_category = LicensedEntityCategory::findBySlug($slug);
        $categories = LicensedEntityCategory::orderBy('id', 'DESC')->where('id','!=',$selected_category->id )->get();
        // $licensedEntities = LicensedEntity::orderBy('id', 'DESC')->where('id',$selected_category->id )->paginate(50);
        $specials = SpecialPage::pluck('title_en', 'id');
        $services = Service::pluck('title_en', 'id');
        //dd($category);
        return view('cms.licensed-entity-categories.show', compact('categories','selected_category','specials', 'services'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cms.licensed-entity-categories.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(LicensedEntityCategory::$rules);

        $inputs = $request->except('banner_img');

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

        $category = LicensedEntityCategory::create($inputs);

        if($category){
            return redirect()->route('cms.licensed-entity-categories.index')->with('status', 'success');
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
        $category = LicensedEntityCategory::find($id);
        $specials = SpecialPage::pluck('title_en', 'id');

        return view("cms.licensed-entity-categories.edit", compact('category','specials'));
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
        $request->validate(LicensedEntityCategory::$rules);

        $category = LicensedEntityCategory::find($id);

        $inputs = $request->except('banner_img');

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
        $category = LicensedEntityCategory::find($id);
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
