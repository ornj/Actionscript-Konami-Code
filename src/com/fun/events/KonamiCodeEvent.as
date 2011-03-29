package com.fun.events {
	/* 2011 Stephen Hurwitz, steve@stevehurwitz.com
	* http://www.stevehurwitz.com,
	* @purpose:	Event dispatched when the Konami code has been successfully entered
	*/
	
	import flash.events.Event;
	
	public class KonamiCodeEvent extends Event {
		
		public static var CHEAT_MODE:String = "Code Entered";
		
		public function KonamiCodeEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
		}
	}
}