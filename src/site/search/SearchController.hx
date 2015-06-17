package site.search;

import ufront.MVC;
import site.UfrontViewResult;

class SearchController extends Controller {
	@:route("/")
	public function search( args:{ q:String } ) {
		return new UfrontViewResult({
			title: 'Search Ufront for ${args.q}'
		});
	}
}
