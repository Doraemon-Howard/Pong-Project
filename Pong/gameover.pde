void gameover(){
  image(introbg,400,300,800,600);
  fill(green);
  text("Game Over",400,300);
  if (leftscore>rightscore){text("LEFT side Win",400,200);}
  if (leftscore<rightscore){text("RIGHT side Win",400,200);}
  if (leftscore==rightscore){text("TIE",400,200);}

  text("Click to restart!",300,450);
  rectButton("Quit", 600,450,200,100,50);
  
}

void gameoverClicks(){
  mode=INTRO;
  reset();
  if (mouseX>500&&mouseX<700&&mouseY>400&&mouseY<500){
    exit();
  }
}
