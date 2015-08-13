package site.home;

import site.features.FeaturesController;
import site.search.SearchController;
import site.showcase.ShowcaseController;
import site.tutorials.TutorialsController;
import ufront.MVC;
#if server
	import ufront.ufadmin.controller.UFAdminHomeController;
#end
using tink.CoreApi;

class HomeController extends Controller {

	@inject public var viewEngine:UFViewEngine;

	@:route("/")
	public function homepage() {

		// Render the feature list.
		var featureRow = viewEngine.getTemplate( "/features/feature-row.html" );

		return FutureTools.when( featureRow ).map(function(featureRowTpl) {
			return new PartialViewResult({
				title: "Ufront - the client/server web framework for Haxe",
				featureList: featureRowTpl.sure().execute({})
			});
		});
	}

	@:route("/tutorials/*") public var tutorials:TutorialsController;
	@:route("/tour/*") public var features:FeaturesController;
	// @:route("/articles/*") public var blog:BlogController;
	@:route("/showcase/*") public var showcase:ShowcaseController;
	@:route("/search/") public var search:SearchController;
	#if server
		@:route("/ufadmin/*") public var ufadmin:UFAdminHomeController;
	#end

	@:route("/quick-start/")
	public function quickStart() {
		return new RedirectResult( "/tutorials/quick-start/" );
	}

	@:route("/documentation/")
	public function documentation() {
		return new PartialViewResult({
			title: "Ufront Documentation Overview"
		});
	}

	@:route("/community/")
	public function community() {
		return new PartialViewResult({
			title: "The Ufront Community"
		});
	}
}
