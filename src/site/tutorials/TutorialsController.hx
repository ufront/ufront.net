package site.tutorials;

import ufront.MVC;

class TutorialsController extends Controller {
	@:route("/")
	public function list() {
		return new PartialViewResult({
			title: "Ufront Tutorials"
		});
	}
}
