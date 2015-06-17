package site.tutorials;

import ufront.MVC;
import site.UfrontViewResult;

class TutorialsController extends Controller {
	@:route("/")
	public function list() {
		return new UfrontViewResult({
			title: "Ufront Tutorials"
		});
	}
}
