package site.home;

import site.blog.BlogController;
import site.features.FeaturesController;
import site.search.SearchController;
import site.showcase.ShowcaseController;
import site.tutorials.TutorialsController;
import ufront.MVC;
import site.UfrontViewResult;
using tink.CoreApi;

class HomeController extends Controller {

	@inject public var viewEngine:UFViewEngine;

	@:route("/")
	public function homepage() {

		// Render the feature list.
		var featureRow = viewEngine.getTemplate( "/features/feature-row.html" );

		trace(context.request.uri);
		trace(context.getRequestUri());
		trace(context.generateUri("/yes"));

		return FutureTools.when( featureRow ).map(function(featureRowTpl) {
			return new UfrontViewResult({
				title: "Ufront - the client/server web framework for Haxe",
				featureList: featureRowTpl.sure().execute({})
			});
		});
	}

	@:route("/tutorials/*") public var tutorials:TutorialsController;
	@:route("/tour/*") public var features:FeaturesController;
	@:route("/blog/*") public var blog:BlogController;
	@:route("/showcase/*") public var showcase:ShowcaseController;
	@:route("/search/") public var search:SearchController;

	@:route("/quick-start/")
	public function quickStart() {
		return new RedirectResult( "/tutorials/quick-start/" );
	}

	@:route("/documentation/")
	public function documentation() {
		return new UfrontViewResult({
			title: "Ufront Documentation Overview"
		});
	}

	@:route("/community/")
	public function community() {
		return new UfrontViewResult({
			title: "The Ufront Community"
		});
	}
}
