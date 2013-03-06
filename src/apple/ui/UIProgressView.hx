//This code was generated using ObjcToHaxeExtern
//https://github.com/Randonee/ObjcToHaxeExtern

package apple.ui;

import cpp.Lib;
import basis.object.ObjectManager;
import basis.object.IObject;
import basis.object.AbstractObject;
import apple.appkit.NSText;
import apple.appkit.NSParagraphStyle;
import apple.ui.UIkit;
import basis.BasisApplication;

class UIProgressView extends UIView
{

	public function new(?type:Class<IObject>=null)
	{
		if(type == null)
			type = UIProgressView;
		super(type);
	}

	//Constants

	//Static Methods

	//Properties
	public var progressViewStyle(get_progressViewStyle, set_progressViewStyle):Int;
	private function get_progressViewStyle():Int
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "progressViewStyle", [], [], ObjectManager.INT_VAL());
	}

	private function set_progressViewStyle(value:Int):Int
	{
		BasisApplication.instance.objectManager.callInstanceMethod(this, "setProgressViewStyle:", [value], [ObjectManager.INT_VAL()], -1 );
		return progressViewStyle;
	}

	public var progress(get_progress, set_progress):Float;
	private function get_progress():Float
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "progress", [], [], ObjectManager.FLOAT_VAL());
	}

	private function set_progress(value:Float):Float
	{
		BasisApplication.instance.objectManager.callInstanceMethod(this, "setProgress:", [value], [ObjectManager.FLOAT_VAL()], -1 );
		return progress;
	}

	public var progressTintColor(get_progressTintColor, set_progressTintColor):Array<Float>;
	private function get_progressTintColor():Array<Float>
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "progressTintColor", [], [], ObjectManager.UICOLOR_VAL());
	}

	private function set_progressTintColor(value:Array<Float>):Array<Float>
	{
		BasisApplication.instance.objectManager.callInstanceMethod(this, "setProgressTintColor:", [value], [ObjectManager.UICOLOR_VAL()], -1 );
		return progressTintColor;
	}

	public var trackTintColor(get_trackTintColor, set_trackTintColor):Array<Float>;
	private function get_trackTintColor():Array<Float>
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "trackTintColor", [], [], ObjectManager.UICOLOR_VAL());
	}

	private function set_trackTintColor(value:Array<Float>):Array<Float>
	{
		BasisApplication.instance.objectManager.callInstanceMethod(this, "setTrackTintColor:", [value], [ObjectManager.UICOLOR_VAL()], -1 );
		return trackTintColor;
	}

	public var progressImage(null, set_progressImage):String;

	private function set_progressImage(value:String):String
	{
		BasisApplication.instance.objectManager.callInstanceMethod(this, "setProgressImage:", [value], [ObjectManager.UIIMAGE_VAL()], -1 );
		return null;
	}

	public var trackImage(null, set_trackImage):String;

	private function set_trackImage(value:String):String
	{
		BasisApplication.instance.objectManager.callInstanceMethod(this, "setTrackImage:", [value], [ObjectManager.UIIMAGE_VAL()], -1 );
		return null;
	}


	//Methods
	public function initWithProgressViewStyle( style:Int):Dynamic
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "initWithProgressViewStyle:", [style], [ObjectManager.INT_VAL()], ObjectManager.OBJECT_VAL());
	}
	public function setProgressAnimated( progress:Float,  animated:Bool):Void
	{
		BasisApplication.instance.objectManager.callInstanceMethod(this, "setProgress:animated:", [progress, animated], [ObjectManager.FLOAT_VAL(), ObjectManager.BOOL_VAL()], -1);
	}


	public static inline function UIProgressViewStyleDefault():Int{return 0;}
	public static inline function UIProgressViewStyleBar():Int{return 1;}


}

