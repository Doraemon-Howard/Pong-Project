void game(){
  image(background, 400,300,800,600);
  
  //paddles
  strokeWeight(0);
  fill(blue);
  circle(leftx,lefty,leftd);
  fill(red);
  circle(rightx,righty,rightd);
 
 
 //ball
 fill(yellow);
 circle(ballx,bally,balld);
 
 
 //move the paddles;
 if (wkey&&lefty>0) lefty-=5;
 if (skey&&lefty<height) lefty+=5;
 if (ai==false){
 if (upkey&&righty>0) righty-=5;
 if (downkey&&righty<height) righty+=5;
 }else{
   if (ballx>width/2){
     if (bally>righty) righty+=5;
     if (bally<righty) righty-=5;
   }
 }
   
 
 
 if (timer>0){
   fill(purple);
   textSize(50);
 text(countdown(), 400,150);
 }
 //move the ball
 if (timer<0){
 ballx+=vx;
 bally+=vy;
 }
 
 //scoreboard
 textSize(50);
 fill(pink);
 text(leftscore,width/4,100);
 fill(green);
 text(rightscore,3*width/4,100);
 timer--;
 //scoring 
 if (ballx<0){
   rightscore++;
   reset();
   coin.rewind();
    coin.play();
   
 }
 if (ballx>width){
   leftscore++;
    reset();
    coin.rewind();
    coin.play();
 }
 if(leftscore>=3||rightscore>=3){
   mode=GAMEOVER;}
 //bouncing the wall
 if (bally<=balld/2){
   vy*=-1;
   bally=balld/2+1;
   bump.rewind();
    bump.play();
 }
 if (bally>=height-balld/2){
   vy*=-1;
   bally=height-balld/2-1;
   bump.rewind();
    bump.play();
 }
 
 //bouncing the puddle
 if (dist(ballx,bally, leftx,lefty)<balld/2+leftd/2){
   vx=(ballx-leftx)/10*speed;
   vy=(bally-lefty)/10*speed;
   bump.rewind();
    bump.play();
 }
 if (dist(ballx,bally, rightx,righty)<=balld/2+rightd/2){
   vx=(ballx-rightx)/10*speed;
   vy=(bally-righty)/10*speed;
   bump.rewind();
    bump.play();
 }
 
 
 //reset button
 rectButton(resetbutton,700,100,80,80);
 //return
 rectButton(returnicon,100,100,80,80);
 //exit button
 rectButton(exiticon,700,500,80,80);
 //pause button
 rectButton(pauseicon,100,500,80,80);
}

void gameClicks(){
  if (mouseX>660&&mouseX<740&&mouseY>60&&mouseY<140){
    reset();}
    if (mouseX>60&&mouseX<140&&mouseY>60&&mouseY<140){
    mode=INTRO;
    reset();
  }
  if (mouseX>660&&mouseX<740&&mouseY>460&&mouseY<540){
    mode=GAMEOVER;
  }
  if (mouseX>60&&mouseX<140&&mouseY>460&&mouseY<540){
    mode=PAUSE;
  }
  
}
