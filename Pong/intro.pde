void intro(){

  fill(0);
  image(introbg,400,300,800,600);

  strokeWeight(1);
  fill(yellow);
  
  if (i>160) increase=false;
  if (i<60)  increase=true;
  
  if(increase)i+=3;
  else i-=3;
  textSize(i);
  text("Pong",400,300);
  rectButton("Start", 300,500,200,100,50);
  rectButton("Option",500,500,200,100,50);
  rectButton("one player",200,200,150,70,30);
  rectButton("two player",600,200,150,70,30);
  rectButton("Quit",750,550,100,50,25);
}

void introClicks(){
  if(mouseX>200 && mouseX<400 && mouseY>450 && mouseY<550){
    mode=GAME;
    leftscore=rightscore=0;
    timer=100;
}
    if(mouseX>400 && mouseX<600 && mouseY>450 && mouseY<550){
    mode=OPTION;
 
    }
    if(mouseX>700 && mouseX<800 && mouseY>525 && mouseY<575){
    exit();
    }
    if(mouseX>125 && mouseX<275 && mouseY>165 && mouseY<235){
    ai=true;
    }
    if(mouseX>525 && mouseX<575 && mouseY>165 && mouseY<235){
    ai=false;
    }
}
