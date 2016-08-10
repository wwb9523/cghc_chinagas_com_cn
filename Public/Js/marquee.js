 function Marquee(MarName)
    {
        this.ID = document.getElementById(MarName);
        this.Speed = 30; 
        this.Direction = 0;
        this.Width = 0;
        this.Height = 0;
        this.Space = 0;
        this.Tag = "p";
        this.Start = function(){
            MarqueeStart(this,this.Direction,this.Width,this.Height,this.Speed,this.Space,this.Tag);
        };
        this.End = function(){
            MarqueeEnd(this);
        }
    }
function MarqueeStart(Mar,Direction,Width,Height,Speed,Space,Tag){
    var msobj;
    if(typeof(Mar) == "string"){
        msobj = new Marquee(Mar);
    }
    if(typeof(Mar) == "object"){
        msobj = Mar;
    }
    if(!msobj.ID) return;
    msobj.ID.style.width = Width + "px";
    msobj.ID.style.height = Height + "px";
    msobj.ID.style.overflow = msobj.ID.style.overflowX = msobj.ID.style.overflowY = "hidden";
    msobj.Direction = Direction;
    msobj.Width = Width;
    msobj.Height = Height;
    msobj.Speed = Speed;
    msobj.Space = Space;
    msobj.Tag = Tag;
    msobj.InnerDiv = msobj.ID.getElementsByTagName("div")[0];
    if(!msobj.InnerDiv) return;
    msobj.InnerDiv.innerHTML += msobj.InnerDiv.innerHTML;
    msobj.Inner = msobj.ID.getElementsByTagName(Tag);
    if(!msobj.Inner) return;
    switch(Direction)
    {
        case 2:
            msobj.InnerDiv.style.width = Width + "px";
            msobj.Inner[0].style.width =Width + "px";
            msobj.Inner[1].style.width =Width + "px";
            if(Height>=msobj.Inner[1].offsetHeight || msobj.Space ==1){
                msobj.Inner[0].style.paddingTop = Height + "px";
                msobj.Inner[1].style.paddingTop = Height + "px";
            }
            break;
        case 3:
            msobj.InnerDiv.style.width = Width + "px";
            msobj.Inner[0].style.width =Width + "px";
            msobj.Inner[1].style.width =Width + "px";
            if(Height>=msobj.Inner[1].offsetHeight || msobj.Space ==1){
                msobj.Inner[0].style.paddingBottom = Height + "px";
                msobj.Inner[1].style.paddingBottom = Height + "px";
            }
            break;
        default:
            msobj.InnerDiv.noWrap = true;
            if(Width >= msobj.Inner[1].offsetWidth || msobj.Space ==1){
                msobj.Inner[0].style.paddingLeft = Width + "px";
                msobj.Inner[1].style.paddingLeft = Width + "px";
            }
            break;
    }

    msobj.ID.onmouseover = function(){
        clearInterval(msobj.TimerID);
    };

    msobj.ID.onmouseout = function(){
        clearInterval(msobj.TimerID);
        msobj.TimerID = funcInterval(MarqueeScroll,msobj.Speed,msobj);
    };
    msobj.TimerID = funcInterval(MarqueeScroll,msobj.Speed,msobj);

}
function MarqueeScroll(Mar){
    switch(Mar.Direction)
    {
        case 0:
            if(Mar.Inner[1].offsetWidth-Mar.ID.scrollLeft<=0)
                Mar.ID.scrollLeft-=Mar.Inner[0].offsetWidth;
            else{
                Mar.ID.scrollLeft++;
            }
            break;
        case 1:
            if(Mar.ID.scrollLeft==0)
                Mar.ID.scrollLeft=Mar.Inner[1].offsetWidth;
            else{
                Mar.ID.scrollLeft--;
            }
            break;
        case 2:
            if(Mar.Inner[1].getBoundingClientRect.height-Mar.ID.scrollTop<=0)
                Mar.ID.scrollTop-=Mar.Inner[0].offsetHeight;
            else{
                Mar.ID.scrollTop++;
            }
            break;
        case 3:
            if(Mar.ID.scrollTop<=0)
                Mar.ID.scrollTop = Mar.Inner[1].offsetHeight;
            else{
                Mar.ID.scrollTop--;
            }
            break;
    }
}
function MarqueeEnd(Mar){
    if(!Mar)return;
    if(typeof(Mar.TimerID) == "number") {
        clearInterval(Mar.TimerID);
        Mar = null;
    }
}function funcInterval(funcName,time){
    var args=[];
    for(var i=2;i<arguments.length;i++){
        args.push(arguments[i]);
    }
    return window.setInterval(function(){
        funcName.apply(this,args);
    },time);
}
