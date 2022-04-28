import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//pong 
//Howard Zhu
//Apr.11
Minim minim;
AudioPlayer theme,coin,bump, gameover,bgm;

int i;
//color pallette
color pink =#FFC0CB;
color black =#000000;
color cyan =#00FFFF;
color orange= #FFA500;
color yellow= #FFFF00;
color green= #00FF00;
color red= #FF0000;
color blue =#0000FF;
color white =#FFFFFF;
color grey= #7C7A7A;
color purple= #800080;

boolean increase=true;
//mode framework
int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;
final int OPTION=5;
//images
PImage optionbg, exiticon,returnicon,pauseicon, resumeicon,background,paddle1,paddle2,introbg,resetbutton;


//entity variables
float leftx, lefty,leftd,rightx,righty,rightd;//paddles
float ballx,bally,balld,vx,vy,speed;//ball
//keyboard variables
boolean wkey,skey,upkey,downkey;
boolean ai;

//scoring
int leftscore,rightscore,timer,count;
void setup(){
  minim=new Minim(this);
  coin= minim.loadFile("coin.wav");
  bump= minim.loadFile("bump.wav");
  bgm=minim.loadFile("First Of 3 - Jeremy Black.mp3");
  size(800,600);
  mode=INTRO;
  speed=1;
  //initialize paddles
  leftx=0;
  lefty=height/2;
  leftd=150;
  rightx=width;
  righty=height/2;
  rightd=150;
  i=70;
  //initialize ball 
  ballx=width/2;
  bally=height/2;
  balld=100;
  
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  bgm.play();
  ai=false;
  //initialize pictures
  returnicon=loadImage("return.png");
  pauseicon=loadImage("pause.png");
  resumeicon=loadImage("resume.png");
  background=loadImage("background1.jpg");
  paddle1=loadImage("puddle1.png");
  paddle2=loadImage("puddle2.png");
  introbg=loadImage("intro.jpg");
  resetbutton=loadImage("resetbutton.png");
  exiticon=loadImage("end.png");
  optionbg=loadImage("optionbg.jpg");
  
  //initialize keyboard vars
  wkey=skey=upkey=downkey=false;
  
  rightscore=leftscore=0;
  timer=100;
  
  vx=random(-5,5)*speed; vy=random(-5,5)*speed;
}

void draw(){
if (mode==INTRO){
    intro();
  }else if (mode==GAME){
    game();
  }else if (mode==PAUSE){
    pause();
  }else if (mode==GAMEOVER){
    gameover();
  }else if (mode==OPTION){
    option();
  }else{
    println("Error: mode ="+mode);
  }
}
