package basisapple.settings;

import basis.settings.Target;


typedef XCodeBuildSetting = 
{
	name:String,
	value:String
}

class AppleTarget extends Target
{
	//Settings
	static inline public var OS_TYPE:String = "os";
	static inline public var SIMULATOR:String = "simulator";
	static inline public var SIMULATOR_TYPE:String = "simulatorType";
	static inline public var CONFIGURATION:String = "configuration";
	static inline public var PLIST:String = "plist";
	
	//Collections
	static inline public var FRAMEWORKS:String = "frameworks";
	
	public var xcodeBuildSettings(default, null):Array<XCodeBuildSetting>;
	
	public function new(?parentTarget:Target = null)
	{
		xcodeBuildSettings = new Array();
		super(parentTarget);
	}
	
	
	public function getDeviceTypeCompilerArgument():String
	{
		var type:String = getSetting(OS_TYPE);
		
		if(type == "ios")
		{
			 if(getSetting(SIMULATOR) == "true")
			 	return "iphonesim";
			 else
			 	return "iphoneos";
		}
		else if(type == "mac")
		{
			return "mac";
		}
			
		return "";
	}
}