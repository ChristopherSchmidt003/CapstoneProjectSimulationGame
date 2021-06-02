void intro() {
  background (black);
  
  fill(white);
  textSize(60);
  text("Capstone game 1", width/2, height/6);
  
  fill(white);
  textSize(30);
  text("Click to play", width/2, height*5/6);
}

void introClicks(){
  mode++;
}
