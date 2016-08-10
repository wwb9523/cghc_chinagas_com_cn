function setcookie(name,value){   
    var Days = 30;   
    var exp  = new Date();   
    exp.setTime(exp.getTime() + Days*24*60*60*1000);   
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();   
}

function getcookie(name){   
    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));    
    if(arr != null){   
        return unescape(arr[2]);   
    }else{   
        return "";   
    }   
}
  
function delcookie(name){   
    var exp = new Date();    
    exp.setTime(exp.getTime() - 1);   
    var cval=getCookie(name);   
    if(cval!=null) document.cookie= name + "="+cval+";expires="+exp.toGMTString();   
}

function showlogin()
{
	var auth = getcookie('YC_auth');
	if(auth != '')
	{
		$('#login_username').html(unescape(getcookie('YC_username')));
		$('#login').hide();
		$('#logined').show();
	}
	else
	{
		$('#logined').hide();
		$('#login').show();
	}
}

$(function(){
    showlogin();
});