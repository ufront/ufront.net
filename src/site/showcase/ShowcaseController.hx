package site.showcase;

import ufront.MVC;

class ShowcaseController extends Controller {
	@:route("/")
	public function list() {
		return new PartialViewResult({
			title: "Ufront Showcase"
		});
	}
}
