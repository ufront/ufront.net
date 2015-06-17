package site.features;

import ufront.MVC;
import site.features.FeatureApi;
import site.UfrontViewResult;
using tink.CoreApi;

class FeaturesController extends Controller {

	@inject public var featureApi:AsyncFeatureApi;

	@:route("/$featureURL")
	public function tour( ?featureURL:String="client-and-server" ) {
		return featureApi.getFeature( featureURL ) >> function(feature) {
			return new UfrontViewResult({
				title: 'Ufront tour: ${feature.name}',
				description: 'Ufront tour: ${feature.name} - ${feature.description}',
				feature: feature
			});
		}
	}
}
