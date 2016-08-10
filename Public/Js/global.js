$(function(){
	
	//在线客服
	var floatContact=function(){
		if (!document.getElementById('float-contact')) return false;
		var floatContact=$('#float-contact');
		var floatContactMini=$('#float-contact-mini').parent();
		if(!window.XMLHttpRequest){
			$(window).scroll(function(){
				floatContact.css({'top': document.documentElement.scrollTop+document.body.scrollTop+175+'px'});
				floatContactMini.css({'top': document.documentElement.scrollTop+document.body.scrollTop+175+'px'});
			});
		} else {
			floatContact.css({
				'position': 'fixed',
				'top': '175px',
				'right': '1px'
			});
			var setPosition=function(){
				//var _right=($(window).width()-980)/2-107;
				//floatContact.css('right', _right+'px');
			}
			setPosition();
			$(window).resize(setPosition);
			floatContactMini.css({
				'position': 'fixed',
				'right': '1px'
			});
		}
		$('#float-contact-mini').click(function(){
			floatContact.show();
			floatContactMini.hide();
			return false;
		});
		$('#online').click(function(){
			floatContact.show();
			floatContactMini.hide();
			return false;
		});
		$('#float-contact-close').click(function(){
			floatContact.hide();
			floatContactMini.show();
			return false;
		});
	}
	floatContact();
	
});