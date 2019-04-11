var play=document.getElementById("playlist");
var art=document.getElementById("artist");
var song=document.getElementById("song");
var back=document.getElementById("back");
var aview=document.getElementById("aview");
var pview=document.getElementById("pview");
var sview=document.getElementById("sview");
var player=document.getElementById("player");
var plist=document.getElementById("plist");
var firstclick;
var song2;

$("button").click(function() {
    if (this.id.match(/^p/))
    {document.getElementById("playingArtist").textContent=this.id.substr(1,this.id.length);
        document.getElementById("playingSong").textContent=this.className;
        try{
            song2.pause()
        }
        catch(err)
            {
                
            }
        song2 = document.getElementById(this.id.substr(1,this.id.length).replace(/ /g,''));
        song2.play();
       musicP.play(song2); 
    }
    else if(this.id.match(/^a/)){
        firstclick=this.id.substr(1,this.id.length);
        sview.style.display="none";
        player.style.display="none";
        plist.style.display="block";
        
    }
    else if(this.id.match(/^z/)){
        var P3name=this.id.substr(1,this.id.length);
        document.getElementById("dummyquery").value="INSERT INTO has2(S3name,P3name) values('"+firstclick+"','"+P3name+"');";
    }
    else if(this.id.match(/^x/)){
        var P3name=this.id.substr(1,this.id.length);
        document.getElementById("dummyquery2").value="SELECT S3name FROM `has2` WHERE P3name='"+P3name+"'";
    }
    else if(this.id.match(/^y/)){
        var P3name=this.id.substr(1,this.id.length);
        document.getElementById("dummyquery2").value="DELETE FROM `has2` WHERE P3name='"+P3name+"'";
    }
});


play.addEventListener("click",function(){
    document.getElementById("choice").style.display="none";
    back.style.display= "block";
    pview.style.display="block";
});


song.addEventListener("click",function(){
    document.getElementById("choice").style.display="none";
    back.style.display= "block";
    sview.style.display="block";
    player.style.display="block";
});



art.addEventListener("click",function(){
    document.getElementById("choice").style.display="none";
    back.style.display= "block";
    aview.style.display="block";
    
});


back.addEventListener("click",function(){
    document.getElementById("choice").style.display="block";
    back.style.display= "none";
    pview.style.display="none";
    sview.style.display="none";
    aview.style.display="none";
    player.style.display="none";
    plist.style.display="none";
});



//Music player

class musicPlayer {
	constructor() {
		this.playBtn = document.getElementById('play');
		this.playBtn.addEventListener('click', this.play2);
		this.controlPanel = document.getElementById('control-panel');
		this.infoBar = document.getElementById('info');
        var song2=null;
	}

	play(song2) {

        song2=song2;
        //alert(songPlayin);
		let controlPanelObj = this.controlPanel,
		infoBarObj = this.infoBar,songObj=song2
        
        Array.from(controlPanelObj.classList).find(function(element){
                return element !== "active" ? controlPanelObj.classList.add('active') : 		controlPanelObj.classList.remove('active');
			});
		Array.from(controlPanelObj.classList).find(function(element){
					try{
                        return element !== "active" ? songObj.pause():songObj.play();
                    }
                    catch(err)
                        {}
			});
		
		Array.from(infoBarObj.classList).find(function(element){
					return element !== "active" ? infoBarObj.classList.add('active') : 		infoBarObj.classList.remove('active');
			});
	}
    
    play2() {
        
        //var songName=document.getElementById("playingSong").textContent.replace(/ /g,'');
        //var songObj=document.getElementById(songName);
        
		var controlPanelObj = document.getElementById('control-panel');
		var infoBarObj = document.getElementById('info');
		
        var t1=controlPanelObj.classList
        Array.from(controlPanelObj.classList).find(function(element){
                return element !== "active" ? controlPanelObj.classList.add('active') : 		controlPanelObj.classList.remove('active');
			});
		Array.from(controlPanelObj.classList).find(function(element){
					try{
                        return element !== "active" ? song2.pause():song2.play();
                    }
                    catch(err)
                        {}
			});
		
		Array.from(infoBarObj.classList).find(function(element){
					return element !== "active" ? infoBarObj.classList.add('active') : 		infoBarObj.classList.remove('active');
			});
	}
    
    
    
}

var musicP=new musicPlayer()
const newMusicplayer = new musicPlayer(song2);