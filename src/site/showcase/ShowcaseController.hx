package site.showcase;

import ufront.MVC;
import site.UfrontViewResult;

class ShowcaseController extends Controller {
	@:route("/")
	public function list() {
		return new UfrontViewResult({
			title: "Ufront Showcase"
		});
	}
}
