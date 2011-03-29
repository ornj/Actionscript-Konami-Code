package {
	/* 2011 Stephen Hurwitz, steve@stevehurwitz.com
	 * http://www.stevehurwitz.com,
	 * @purpose:	Main driver for testing the Konami code
	 */
	
	import com.fun.KonamiCode;
	import com.fun.events.KonamiCodeEvent;
	
	import flash.display.Sprite;
	
	[SWF (frameRate="30", backgroundColor="#000000")]
	
	public class KonamiCodeDriver extends Sprite {
		
		private var code_monitor:KonamiCode;
		
		public function KonamiCodeDriver() {
			code_monitor = new KonamiCode(stage);
			code_monitor.addEventListener(KonamiCodeEvent.CHEAT_MODE, cheatModeEnabled);
		}
	
		private function cheatModeEnabled(e:KonamiCodeEvent):void {
			trace("コナミコマンド!");
		}
	}
}