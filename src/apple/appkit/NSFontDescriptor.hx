//This code was generated using ObjcToHaxeExtern
//https:/github.com/Randonee/ObjcToHaxeExtern

package apple.appkit;

import cpp.Lib;
import basis.object.*;
import apple.appkit.*;
import apple.ui.*;
import basis.BasisApplication;
import basis.object.TypeValues;
import apple.appkit.NSPasteboard;
import apple.appkit.NSApplication;
import apple.foundation.NSAffineTransform;

class NSFontDescriptor extends AbstractObject
{

	public function new(?type:Class<IObject>=null)
	{
		if(type == null)
			type = NSFontDescriptor;
		super(type);
	}

	//Constants

	//Static Methods
	static public function fontDescriptorWithNameSize( fontName:String,  size:Float):NSFontDescriptor
	{
		return BasisApplication.instance.objectManager.callClassMethod("apple.appkit.NSFontDescriptor", "fontDescriptorWithName:size:", [fontName, size], [TypeValues.StringVal, TypeValues.FloatVal], TypeValues.ObjectVal);
	}
	static public function fontDescriptorWithNameMatrix( fontName:String,  matrix:NSAffineTransform):NSFontDescriptor
	{
		return BasisApplication.instance.objectManager.callClassMethod("apple.appkit.NSFontDescriptor", "fontDescriptorWithName:matrix:", [fontName, matrix], [TypeValues.StringVal, TypeValues.ObjectVal], TypeValues.ObjectVal);
	}

	//Properties

	//Methods
	public function pointSize():Float
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "pointSize", [], [], TypeValues.FloatVal);
	}
	public function symbolicTraits():Int
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "symbolicTraits", [], [], TypeValues.IntVal);
	}
	public function objectForKey( anAttribute:String):Dynamic
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "objectForKey:", [anAttribute], [TypeValues.StringVal], TypeValues.ObjectVal);
	}
	public function fontDescriptorWithFamily( newFamily:String):NSFontDescriptor
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "fontDescriptorWithFamily:", [newFamily], [TypeValues.StringVal], TypeValues.ObjectVal);
	}
	public function fontDescriptorWithMatrix( matrix:NSAffineTransform):NSFontDescriptor
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "fontDescriptorWithMatrix:", [matrix], [TypeValues.ObjectVal], TypeValues.ObjectVal);
	}
	public function fontDescriptorWithSize( newPointSize:Float):NSFontDescriptor
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "fontDescriptorWithSize:", [newPointSize], [TypeValues.FloatVal], TypeValues.ObjectVal);
	}
	public function matrix():NSAffineTransform
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "matrix", [], [], TypeValues.ObjectVal);
	}
	public function fontDescriptorWithFace( newFace:String):NSFontDescriptor
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "fontDescriptorWithFace:", [newFace], [TypeValues.StringVal], TypeValues.ObjectVal);
	}
	public function fontDescriptorWithSymbolicTraits( symbolicTraits:Int):NSFontDescriptor
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "fontDescriptorWithSymbolicTraits:", [symbolicTraits], [TypeValues.IntVal], TypeValues.ObjectVal);
	}
	public function postscriptName():String
	{
		return BasisApplication.instance.objectManager.callInstanceMethod(this, "postscriptName", [], [], TypeValues.StringVal);
	}


	public static inline var NSFontUnknownClass:Int =  0 << 28;
	public static inline var NSFontOldStyleSerifsClass:Int =  1 << 28;
	public static inline var NSFontTransitionalSerifsClass:Int =  2 << 28;
	public static inline var NSFontModernSerifsClass:Int =  3 << 28;
	public static inline var NSFontClarendonSerifsClass:Int =  4 << 28;
	public static inline var NSFontSlabSerifsClass:Int =  5 << 28;
	public static inline var NSFontFreeformSerifsClass:Int =  7 << 28;
	public static inline var NSFontSansSerifClass:Int =  8 << 28;
	public static inline var NSFontOrnamentalsClass:Int =  9 << 28;
	public static inline var NSFontScriptsClass:Int =  10 << 28;
	public static inline var NSFontSymbolicClass:Int =  12 << 28;
	public static inline var NSFontFamilyClassMask:Int = 0;
	public static inline var NSFontItalicTrait:Int =  1 << 0;
	public static inline var NSFontBoldTrait:Int =  1 << 1;
	public static inline var NSFontExpandedTrait:Int =  1 << 5;
	public static inline var NSFontCondensedTrait:Int =  1 << 6;
	public static inline var NSFontMonoSpaceTrait:Int =  1 << 10;
	public static inline var NSFontVerticalTrait:Int =  1 << 11;
	public static inline var NSFontUIOptimizedTrait:Int =  1 << 12;


}

