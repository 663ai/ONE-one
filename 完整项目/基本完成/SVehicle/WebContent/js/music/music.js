var myMusic = null;
var MyMusic = function(){
	var _this = this;
	var musicBox_H = document.getElementById("musicBox"); 
	//音乐列表
	var musicFiles=[
	                new MusicObj("陈小春 - 独家记忆","musics/123.mp3","陈小春",0,1),
	                new MusicObj("陈奕迅 - 可以了","musics/234.mp3","陈奕迅",0,1),	
	                new MusicObj("范玮琪 - 是非题","musics/范玮琪 - 是非题.mp3","范玮琪",0,1),
					new MusicObj("王铮亮 - 我不会一个人","musics/王铮亮 - 我不会一个人.mp3","王铮亮",0,1),
					new MusicObj("龙井 - 兄弟","musics/龙井 - 兄弟.mp3","龙井",0,1),
					new MusicObj("陈翔 - 那一世","musics/陈翔 - 那一世.mp3","陈翔",0,1),
					new MusicObj("陈翔 - 烟火","musics/陈翔 - 烟火.mp3","陈翔",0,1),	
					new MusicObj("陈翔 - 没了你,我把哭当成了笑","musics/陈翔 - 没了你,我把哭当成了笑.mp3","陈翔",0,0),
					new MusicObj("梁静茹 - 如果有一天","musics/梁静茹 - 如果有一天.mp3","梁静茹",0,1),
					new MusicObj("严艺丹 - 无·果","musics/严艺丹 - 无·果.mp3","严艺丹","",1,0),
					new MusicObj("家家 - 尘埃","musics/家家 - 尘埃.mp3","家家",0,1),
					new MusicObj("舜文齐 - 城市有爱","musics/舜文齐 - 城市有爱.mp3","舜文齐",0,1),
					new MusicObj("弦子 - 醉清风","musics/弦子 - 醉清风.mp3","弦子",0,1),	
					new MusicObj("严艺丹 - 无·果","musics/严艺丹 - 无·果.mp3","严艺丹","",1,0),
					new MusicObj("家家 - 尘埃","musics/家家 - 尘埃.mp3","家家",0,1),
					new MusicObj("舜文齐 - 城市有爱","musics/舜文齐 - 城市有爱.mp3","舜文齐",0,1),
					new MusicObj("弦子 - 醉清风","musics/弦子 - 醉清风.mp3","弦子",0,1)
 ];
	//播放模式 1-全部循环 2-单曲循环  3-随机播放
	var playMode = 1;
	//当前音乐播放的下标
	var index = -1;
	var length = musicFiles.length;
	var playMode_H = $("#playMode");
	var musicList_H = $("#musicList");
	var playMsg_H = $("#playMsg");
	var name = $("#name");
	var author = $("#author");
	var CD = $("#CD");
	var picInfo = $("#picInfo");
	var pop =$("#pop");
	var playMsg = null;
	_this.fristMusic = function(){
		index = 0;
		_this.play();
	}
	_this.playOrPause=function(){
		pop.addClass("Gray");
		var popVal = pop.attr("imgVal");
		if(popVal == 0){
			pop.attr("src","img/images/play.png");
			pop.attr("title","点击播放");
			pop.attr("imgVal","1");
			musicBox_H.pause();
		}else{
			pop.attr("src","img/images/pause.png");
			pop.attr("title","点击暂停");
			pop.attr("imgVal","0");
			musicBox_H.play();
		}
		
	}
	_this.end = function(){
		index = length -1;
		_this.play();
	}
	_this.lastMusic = function(){
		if(index == 0){
			index = length-1; 
		}else{
			index --;
		}
		_this.play();
	}
	_this.loadMusic = function(){
		for(var i in musicFiles){
			var html = "<li>"+musicFiles[i].name;
			if(musicFiles[i].hot == 1){
			html+="<img src='img/images/hot1.gif'/>";
			}
			if(musicFiles[i].newSong == 1){
				html+="<img src='img/images/new.png'/>";
			}
			html+= "</li>";
			musicList_H.append(html);
	    }
	};
	_this.nextMusic = function(){
		var currentMusic = null;
		
		switch(parseInt(playMode)){
			case 1:
			index ++;
			if(index>=length){
				index = 0;
			}
			break;
			case 2:
			if(index == -1){
				index = 0;
			}
			break;
			case 3:
			index = Math.floor(Math.random()*length);
			
			break;
		}
		_this.play();
	};
	_this.loadInfo = function(){
		name.text(musicFiles[index].name);
		author.text(musicFiles[index].author);
		CD.text(musicFiles[index].CD);
		picInfo.attr("src",musicFiles[index].people);
	};
	_this.play = function(){
		currentMusic = musicFiles[index];
		playMsg_H.text(musicFiles[index].name+"【"+musicFiles[index].author+"】");
		$(musicBox_H).attr("src",musicFiles[index].url);
		$("#musicList").children().each(function(i){
				$($("#musicList").children().get(i)).removeClass("liOn");
		}); 
		$($("#musicList").children().get(index)).addClass("liOn");
		_this.loadInfo();
		musicBox_H.play();
	};
	_this.init = function(){
		_this.loadMusic();
		var songheight = $("#songs").height();
		$("#infos").css("height",songheight+"px");
		playMode_H.change(function(){
			playMode = playMode_H.val();
		});
	};
}
$().ready(function(){
	myMusic = new MyMusic();
	myMusic.init();
	myMusic.nextMusic();
});
//音乐对象
function MusicObj(name,url,author,cd,people,hot,newSong){
	var _this = this;
	this.name = name;
	this.url = url;
	this.author = author;
	this.CD = cd;
	this.people = people;
	this.hot = hot;
	this.newSong= newSong;
}


