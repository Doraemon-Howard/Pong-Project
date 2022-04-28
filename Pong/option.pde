void option(){
  image(optionbg,400,300,800,600);
  //return
  rectButton(returnicon, 100,100,100,100);
  
  //speed
  textSize(50);
  fill(yellow);
  text("Speed:",100,200);
  rectButton("Slow",300,200,100,75,30); 
  rectButton("Medium",450,200,100,75,20); 
  rectButton("Fast",600,200,100,75,30);
  fill(yellow);
  if (speed==0.6) text("Slow",700,200); 
  if (speed==1) text(" Medium",700,200); 
  if (speed==1.8) text(" Fast",700,200); 
  
  //ball size
  textSize(50);
  fill(yellow);
  text("Ball Size:",100,350);
  rectButton("Small",300,350,100,75,30); 
  rectButton("Medium",450,350,100,75,20); 
  rectButton("Large",600,350,100,75,30);
  fill(yellow);
  if (balld==75) text(" Small",700,350); 
  if (balld==100) text(" Medium",700,350); 
  if (balld==125) text(" Large",700,350); 
  
  //puddle size
  textSize(50);
  text("Puddle Size:",100,500);
  rectButton("Small",300,500,100,75,30); 
  rectButton("Medium",450,500,100,75,20); 
  rectButton("Large",600,500,100,75,30);
  fill(yellow);
  if (leftd==150) text(" Small",700,500); 
  if (leftd==200) text(" Medium",700,500); 
  if (leftd==250) text(" Large",700,500); 
  
  
  
  
  
  
  
  //
}


void optionClicks(){
  if (mouseX>50&&mouseX<150&&mouseY>50&&mouseY<150){
    mode=INTRO;}
  //speed================================================================================
  if(mouseX>250 && mouseX<350 && mouseY>163 && mouseY<237){//slow
    vx=random(-10,10)*0.6;
    vy=random(-10,10)*0.6;
    speed=0.6;
}
  if(mouseX>400 && mouseX<500 && mouseY>163 && mouseY<237){//medium
    vx=random(-10,10);
    vy=random(-10,10);
    speed=1;
}
  if(mouseX>550 && mouseX<650 && mouseY>163 && mouseY<237){//fast
    vx=random(-10,10)*1.8;
    vy=random(-10,10)*1.8;
    speed=1.8;
}  
  //ball size================================================================================
  if(mouseX>250 && mouseX<350 && mouseY>313 && mouseY<387){//small
    balld=75;
}
  if(mouseX>400 && mouseX<500 && mouseY>313 && mouseY<387){//medium
   balld=100;
}
  if(mouseX>550 && mouseX<650 && mouseY>313 && mouseY<387){//fast
    vx=random(-10,10)*1.8;
    vy=random(-10,10)*1.8;
    balld=125;
}  
  //puddle size================================================================================
  if(mouseX>250 && mouseX<350 && mouseY>463 && mouseY<537){//slow
    leftd=rightd=150;
    
}
  if(mouseX>400 && mouseX<500 && mouseY>463 && mouseY<537){//medium
    leftd=rightd=200;
}
  if(mouseX>550 && mouseX<650 && mouseY>463 && mouseY<537){//fast
    leftd=rightd=250;
}  

}
