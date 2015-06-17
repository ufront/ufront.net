// package site.wiki;
//
// import ufront.MVC;
// import sys.FileSystem;
// import sys.io.File;
// using tink.CoreApi;
// using StringTools;
//
// class WikiApi extends UFApi {
// 	@inject("scriptDirectory") public var scriptDir:String;
//
// 	static var repoName = "wiki-pages";
//
// 	public function getWikiPage( pageName:String ):Outcome<WikiPage,Error> {
// 		try {
// 			var repo = scriptDir + repoName + "/";
// 			var file = repo + pageName + ".md";
// 			if ( FileSystem.exists(file) ) {
// 				var md = File.getContent( file );
// 				var title = pageName.replace("-", " ");
// 				return Success({
// 					title: title,
// 					markdown: md
// 				});
// 			}
// 			else return Failure( HttpError.pageNotFound() );
// 		}
// 		catch (e:Dynamic) return Failure( HttpError.internalServerError('Failed to read wiki page $pageName: $e') );
// 	}
// }
//
// class WikiApiAsync extends UFAsyncApi<WikiApi> {}
