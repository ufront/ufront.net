package site.search;

import ufront.MVC;

class SearchController extends Controller {
	@:route("/")
	public function search( args:{ q:String } ) {
		return new PartialViewResult({
			title: 'Search Ufront for ${args.q}'
		});
	}
}
