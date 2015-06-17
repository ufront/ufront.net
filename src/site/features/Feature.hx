package site.features;

import ufront.db.Object;
import sys.db.Types;

class Feature extends Object {
	public var url:SString<255>;
	public var name:SString<255>;
	public var description:SText;
	public var content:SText;

	// TODO: if we start using a database here, switch these to a "BelongsTo<>"
	public var previous:Null<String>;
	public var next:Null<String>;
}
