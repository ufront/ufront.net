import ufront.MVC;
import site.home.HomeController;

class Client {
	static var jsApp:ClientJsApplication;

	static function main() {
		var errHandler = new ErrorPageHandler();
		errHandler.renderErrorPage = function( title:String, content:String ):String {
			return CompileTime.interpolateFile( "site/ErrorPage.html" );
		}

		jsApp = new ClientJsApplication({
			indexController: HomeController,
			defaultLayout: "layout.html",
			errorHandlers: [errHandler]
		});

		jsApp.listen();
	}
}
