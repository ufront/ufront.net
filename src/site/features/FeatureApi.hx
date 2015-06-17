package site.features;

import ufront.MVC;
import tink.CoreApi;
using ObjectInit;

class AsyncFeatureApi extends UFAsyncApi<FeatureApi> {}

class FeatureApi extends UFApi {
	public function getFeature( name:String ):Outcome<Feature,Error> {
		for( feature in features ) {
			if ( feature.url==name ) {
				return Success( feature );
			}
		}
		return Failure( HttpError.pageNotFound() );
	}

	// TODO: decide if we keep these in compile-time code or put them in a database.
	static var features = [
		new Feature().init({
			url: "client-and-server",
			name: "Client and Server",
			description: "Ufront allows you to create Isomorphic web apps - which can run both on the client (for responsiveness) and the server (for reliability).",
			content: CompileTime.readMarkdownFile( "site/features/content/client-and-server.md" ),
			previous: null,
			next: "batteries-included"
		}),

		new Feature().init({
			url: "batteries-included",
			name: "Batteries Included",
			description: "Ufront includes tools for database models, emails, session management, Haxe remoting, templating engines and more.",
			content: CompileTime.readMarkdownFile( "site/features/content/batteries-included.md" ),
			previous: "client-and-server",
			next: "replaceable-batteries"
		}),

		new Feature().init({
			url: "replaceable-batteries",
			name: "Replaceable Batteries",
			description: "Ufront is flexible, with most moving parts being able to be replaced with alternative implementations.",
			content: CompileTime.readMarkdownFile( "site/features/content/replaceable-batteries.md" ),
			previous: "batteries-included",
			next: "built-with-haxe"
		}),

		new Feature().init({
			url: "built-with-haxe",
			name: "Built with Haxe",
			description: "Haxe is a great language for web development. Type safe, easy to learn, fast, and able to target multiple platforms.",
			content: CompileTime.readMarkdownFile( "site/features/content/built-with-haxe.md" ),
			previous: "replaceable-batteries",
			next: "cross-platform"
		}),

		new Feature().init({
			url: "cross-platform",
			name: "Cross Platform",
			description: "Ufront can compile your code to Neko, PHP, client-side JS, and an experimental NodeJS. Adding new targets is easy too.",
			content: CompileTime.readMarkdownFile( "site/features/content/cross-platform.md" ),
			previous: "built-with-haxe",
			next: null
		}),

		new Feature().init({
			url: "community-driven",
			name: "Community Driven",
			description: "Ufront is an open source project sponsored by the Haxe Foundation.",
			content: CompileTime.readMarkdownFile( "site/features/content/community-driven.md" ),
			previous: null,
			next: null
		}),
	];
}
