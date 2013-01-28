﻿package local.display{	import flash.display.Sprite;	import flash.events.MouseEvent;	import flash.text.TextField;	import flash.text.TextFieldAutoSize;	import flash.net.URLRequest;	import flash.net.navigateToURL;		import elemental.effects.ColorFade;		public class MenuLink extends Sprite	{		private const errorMessage: String = "javascript:document.write(You did not provide a link for this button.);"		private var link: String;		private var window: String;				public function MenuLink(text: String = null, link: String = errorMessage, window: String = "_blank") : void		{			if (text == null)				return void;							_txt.text = text;			this.link = link;			this.window = window;						addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);			addEventListener(MouseEvent.MOUSE_OUT,  onMouseOut);			addEventListener(MouseEvent.CLICK,      onMouseClick);						this.buttonMode = true;			this.useHandCursor = true;			this.mouseChildren = false;						this._txt.autoSize = TextFieldAutoSize.LEFT;		}				private function onMouseOver(event: MouseEvent) : void		{			ColorFade.fadeTo(this, 0, 0,0,0, 4);		}				private function onMouseOut(event: MouseEvent) : void		{			ColorFade.fadeTo(this, 1, 0,0,0, 4);		}				private function onMouseClick(event: MouseEvent) : void		{			navigateToURL( new URLRequest(link), window );		}	}}