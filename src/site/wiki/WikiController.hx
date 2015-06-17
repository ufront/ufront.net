// package site.wiki;
//
// import site.wiki.WikiApi;
// import ufront.MVC;
// import site.UfrontViewResult;
// using StringTools;
//
// class WikiController extends Controller {
// 	@inject public var asyncApi:WikiApiAsync;
//
// 	@:route("/$pageName")
// 	public function page( ?pageName:String="Home" ) {
// 		return asyncApi.getWikiPage( pageName ) >> function(p:WikiPage) {
// 			var title = (pageName=="Home") ? "Ufront Wiki" : '${p.title} - Ufront Wiki';
//
// 			// Take care of wiki style links. TODO: add support directly to the markdown lib.
// 			var wikiLink = ~/\[\[([a-zA-Z0-9() ]+)\]\]/g;
// 			var markdown = wikiLink.map( p.markdown, function(r) {
// 				var link = r.matched(1);
// 				var pageRef = link.replace(" ","-");
// 				return '[$link](${baseUri}${pageRef})';
// 			});
// 			var html = Markdown.markdownToHtml( markdown );
//
// 			return new UfrontViewResult({
// 				title: title,
// 				content: html
// 			});
// 		}
// 	}
// }
