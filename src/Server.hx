import ufront.MVC;
import site.home.HomeController;
import site.SiteApi;
import sys.db.*;

class Server {
	static var ufApp:UfrontApplication;

	static function main() {
		var errHandler = new ErrorPageHandler();
		errHandler.renderErrorPage = function( title:String, content:String ):String {
			return CompileTime.interpolateFile( "site/ErrorPage.html" );
		}

		ufApp = new UfrontApplication({
			indexController: HomeController,
			remotingApi: SiteApi,
			defaultLayout: "layout.html",
			errorHandlers: [errHandler]
		});
		// ufApp.useModNekoCache();

		Manager.cnx = Mysql.connect( CompileTime.parseJsonFile("db.json") );
		ufApp.executeRequest();
	}
}
