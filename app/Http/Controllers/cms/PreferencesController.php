<?php
namespace App\Http\Controllers\cms;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Preference;
use \Cviebrock\EloquentSluggable\Services\SlugService;

use Image;


class PreferencesController extends BaseController {

	/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $preference = Preference::orderBy('id', 'DESC')->first();
        return view('cms.preferences.index', compact('preference'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cms.preferences.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(Preference::$rules);

        // $fileFields = ['member_icon','logo','project_icon','school_icon','university_icon']

        
        // if ($request->hasFile('member_icon'))
        // {
        //     if ($request->file('member_icon')->isValid())
        //     {
        //         $file_url_sw = $request->file('member_icon');

        //         $doc_name_sw = 'sw-'.time() . '-' .$file_url_sw->getClientOriginalName();

        //         $pathName = '/uploads/documents/';

        //         $destinationPath = public_path().$pathName;

        //         $file_url_sw->move($destinationPath, $doc_name_sw);

        //         $data['member_icon'] = $doc_name_sw;

        //     }
        // }


        Preference::create($request->all());
        return redirect('cms/preferences')->with('status','success');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $preference = Preference::find($id);
        return view("cms.preferences.edit", compact('preference'));
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
        $preference = Preference::find($id);

        $request->validate(Preference::$rules);

        $preference->update($request->all());
        return redirect('cms/preferences')->with('status','success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Preference::destroy($id);
        return redirect('cms/preferences')->with('status','success');
    }

}
