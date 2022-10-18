<?php
namespace App\Http\Controllers\cms;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\community;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use App\Models\communityImport;
use Excel;

use Response;
use Validator;
use Redirect;
use Auth;

class CommunitiesController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $communities = community::orderBy('id', 'DESC')->get();
        return view('cms.communities.index', compact('communities'));
    }

    
    public function uploadcommunities(Request $request)
    {
        $GLOBALS['category_id'] = $request->category_id;
        if($request->clear_available) community::where('category_id', $GLOBALS['category_id'])->delete();
        Excel::import(new communityImport, $request->file);
        return  Redirect::back()->with('status','success');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cms.communities.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(community::$rules);

		/*$validator = Validator::make($data = , );

        if ($validator->fails())
        {
            return Redirect::back()->withErrors($validator)->withInput();
        }*/

        $data = $request->except('photo_url');

       if ($request->hasFile('photo_url'))
		{

			if ($request->file('photo_url')->isValid())
			{
			    $file_url_en = $request->file('photo_url');

				$doc_name_en = time() . '-' .$file_url_en->getClientOriginalName();

				$pathName = '/uploads/communities/';

				$destinationPath = public_path().$pathName;

				$file_url_en->move($destinationPath, $doc_name_en);

				$data['photo_url'] = $pathName.$doc_name_en;

			}
		}


         //$data['user_id'] = Auth::user()->id;
        $community = community::create($data);

        if($community){
            // return redirect('cms/communities')->with('status','success');
            return  Redirect::back()->with('status','success');
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
        $community = community::find($id);
        return view("cms.communities.edit", compact('community'));
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
    	$community = community::find($id);

    	$request->validate(community::$rules);

        $data = $request->except('photo_url');

        if ($request->hasFile('photo_url'))
		{

			if ($request->file('photo_url')->isValid())
			{
			    $file_url_en = $request->file('photo_url');

				$doc_name_en = time() . '-' .$file_url_en->getClientOriginalName();

				$pathName = '/uploads/communities/';

				$destinationPath = public_path().$pathName;

				$file_url_en->move($destinationPath, $doc_name_en);

				$data['photo_url'] = $pathName.$doc_name_en;

				if(is_file(public_path().$community->photo_url) && file_exists(public_path().$community->photo_url)){
					unlink(public_path().$community->photo_url);
				}

			}
		}


	
        $community->update($data);

        // return redirect('cms/communities')->with('status','success');
        return  Redirect::back()->with('status','success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

    	$community = community::find($id);

		if(is_file(public_path().$community->photo_url) && file_exists(public_path().$community->photo_url)){
			unlink(public_path().$community->photo_url);
		}
	
		community::destroy($id);

        // return redirect('cms/communities')->with('status','success');
        return  Redirect::back()->with('status','success');
    }

}
