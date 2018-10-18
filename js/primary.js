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

$("button").click(function() {
    if (this.id.match(/^p/))
    {
       new musicPlayer().play2(); document.getElementById("playingArtist").textContent=this.id.substr(1,this.id.length);
        document.getElementById("playingSong").textContent=this.className;
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
		this.play = this.play.bind(this);
		this.playBtn = document.getElementById('play');
		this.playBtn.addEventListener('click', this.play);
		this.controlPanel = document.getElementById('control-panel');
		this.infoBar = document.getElementById('info');
	}

	play() {
		let controlPanelObj = this.controlPanel,
		infoBarObj = this.infoBar
		Array.from(controlPanelObj.classList).find(function(element){
					return element !== "active" ? controlPanelObj.classList.add('active') : 		controlPanelObj.classList.remove('active');
			});
		
		Array.from(infoBarObj.classList).find(function(element){
					return element !== "active" ? infoBarObj.classList.add('active') : 		infoBarObj.classList.remove('active');
			});
	}
    
    play2(){
        let controlPanelObj = this.controlPanel,
		infoBarObj = this.infoBar
		Array.from(controlPanelObj.classList).find(function(element){
            controlPanelObj.classList.add('active');
			});
		
		Array.from(infoBarObj.classList).find(function(element){
            infoBarObj.classList.add('active');
			});
    }
}

const newMusicplayer = new musicPlayer();