package site.blog;

import ufront.MVC;
import site.UfrontViewResult;

class BlogController extends Controller {
	@:route("/")
	public function blog() {
		return new UfrontViewResult({
			title: "Ufront Blog"
		});
	}
}
