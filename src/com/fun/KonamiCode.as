package com.fun {
	/* 2011 Stephen Hurwitz, steve@stevehurwitz.com
	* http://www.stevehurwitz.com,
	* @purpose:	Singleton monitoring for the input of Konami code.
	*			Dispatches KonamiCodeEvent.CHEAT_MODE.
	*/
	
	import com.fun.events.KonamiCodeEvent;
	
	import flash.display.Stage;
	import flash.events.EventDispatcher;
	import flash.events.KeyboardEvent;
	
	public class KonamiCode extends EventDispatcher  {
		
		private static const _code:Array = new Array( 38, 38, 40, 40, 37, 39, 37, 39, 66, 65 );
		private var _count:uint = 0;
		private var _target:Stage;
		
		public function KonamiCode(Target:Stage) {
			_target = Target;
			_target.addEventListener(KeyboardEvent.KEY_DOWN, checkKey);
		}
		
		private function checkKey(e:KeyboardEvent):void {
			if(_code[_count] == e.keyCode) {
				_count++;
				if(_count == _code.length) {
					dispatchEvent(new KonamiCodeEvent(KonamiCodeEvent.CHEAT_MODE));
				}
			} else {
				_count = 0;
			}
		}
	}
}