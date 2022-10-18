<?php namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Community;
use App\Models\CommunityCategory;

class CommunitiesController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index($category_slug) 
	{
		$category = CommunityCategory::where('slug', $category_slug)->with('communities')->first();
		// $communities = $category->communities();
		$communities = Community::orderBy('name', 'ASC')->orderBy('name','ASC')->where('category_id', $category->id)->paginate(20);


    return view('site.communities.index', compact('communities','category'));
	}
	

	public function search(Request $request){
		$term = strip_tags($request->q);
		$category = CommunityCategory::where('slug', $request->category)->with('communities')->first();
		$communities = Community::where('category_id', $category->id)->where(function ($q)  use ($term){
			$q->where('name', 'like', '%' . $term . '%')
			->orWhere('phone', 'like', '%' . $term . '%')
			->orWhere('region', 'like', '%' . $term . '%')
			->orWhere('country', 'like', '%' . $term . '%')
			->orWhere('email', 'like', '%' . $term . '%');
		})->orderBy('id','DESC')->paginate(5000);
			
		return view('site.communities.index', compact('communities','term','category'));
	}




	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($category_slug, $entity_slug)
	{
		$community = Community::findBySlug($entity_slug);

		//if  content not found
		if(!$community) return view('site.default-not-found');

		return view('site.communities.show', compact('community'));
	}

	

}
