void pause(){
    image(introbg,400,400,800,800);
  fill(yellow);
  text("Pause",400,200);
  image(resumeicon,100,100,100,100);


}
void pauseClicks(){
    if(dist(mouseX,mouseY,100,100)<50){
    mode=GAME;
  }
}
