package site;

import ufront.MVC;
#if client
	import js.Browser.*;
	using Detox;
#end

class UfrontViewResult extends ViewResult {
	#if client
	public function new( ?data:TemplateData, ?viewPath:String, ?templatingEngine:TemplatingEngine ) {
		super( data, viewPath, templatingEngine );
		this.layoutSource = None;
	}

	override function writeResponse( response:String, combinedData:TemplateData, actionContext:ActionContext ) {
		actionContext.httpContext.response.contentType = "text/html";
		"#viewContent".find().append( response.parse().addClass("fade in") );
		document.title = combinedData["title"];
		actionContext.httpContext.response.preventFlush();
	}
	#end
}
