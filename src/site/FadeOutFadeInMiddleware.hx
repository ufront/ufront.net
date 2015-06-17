package site;

import ufront.MVC;
import tink.CoreApi;
import haxe.Timer;
import js.Browser.*;
import js.html.*;
using Detox;

class FadeOutFadeInMiddleware implements UFMiddleware {
	public function new() {}

	public function requestIn( ctx:HttpContext ):Surprise<Noise,Error> {
		var fadeOutContainer = "#viewContentFadeOut".find().addClass( "transition-view-content" );
		var container = "#viewContent".find().addClass( "transition-view-content in" );

		window.requestAnimationFrame(function(f) {
			container.removeClass("in");
			fadeOutContainer.addClass("out");
		});
		Timer.delay(function() {
			fadeOutContainer.empty().removeClass("out");
			js.Browser.console.log( 'empty' );
		}, 1000);
		"#viewContent".find().children().appendTo( fadeOutContainer );
		return SurpriseTools.success();
	}

	public function responseOut( app ):Surprise<Noise,Error> {
		return SurpriseTools.success();
	}

}
