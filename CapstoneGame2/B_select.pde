void select() {
  background(black);
  
  fill(white);
  textSize(45);
  if (pchose == false) {
    text("Choose the blue player's strategy", width/2, height/8);
  } else {
    text("Choose the red player's strategy", width/2, height/8);
  }
  
  textSize(18);
  fill(white);
  ellipse(width/5, height/2.5, 150, 150);
  fill(black);
  text("ALWAYS HOLDS", width/5, height/2.5);
  
  fill(white);
  ellipse(width/2, height/2.5, 150, 150);
  fill(black);
  text("ALWAYS GIVES", width/2, height/2.5);
  
  fill(white);
  ellipse(width*4/5, height/2.5, 150, 150);
  fill(black);
  text("COPYCAT", width*4/5, height/2.5);
  
  fill(white);
  ellipse(width/5, height*3/4, 150, 150);
  fill(black);
  text("JERK", width/5, height*3/4);
  
  fill(white);
  ellipse(width/2, height*3/4, 150, 150);
  fill(black);
  text("GRUDGER", width/2, height*3/4);
  
  fill(white);
  ellipse(width*4/5, height*3/4, 150, 150);
  fill(black);
  text("RANDOM", width*4/5, height*3/4);
}

void selectClicks(){
  if (dist(mouseX, mouseY, width/5, height/2.5) < 150) {
    if (pchose == false) {
      myPlayer = new Holds();
      pchose = true;
    } else {
      myBot = new Holds();
      mode++;
    }
  } else if (dist(mouseX, mouseY, width/2, height/2.5) < 150) {
    if (pchose == false) {
      myPlayer = new Gives();
      pchose = true;
    } else {
      myBot = new Gives();
      mode++;
    }
  } else if (dist(mouseX, mouseY, width*4/5, height/2.5) < 150) {
    if (pchose == false) {
      myPlayer = new Copycat();
      pchose = true;
    } else {
      myBot = new Copycat();
      mode++;
    }
  } else if (dist(mouseX, mouseY, width/5, height*3/4) < 150) {
    if (pchose == false) {
      myPlayer = new Jerk();
      pchose = true;
    } else {
      myBot = new Jerk();
      mode++;
    }
  } else if (dist(mouseX, mouseY, width/2, height*3/4) < 150) { 
    if (pchose == false) {
      myPlayer = new Grudger();
      pchose = true;
    } else {
      myBot = new Grudger();
      mode++;
    }
  } else if (dist(mouseX, mouseY, width*4/5, height*3/4) < 150) { 
    if (pchose == false) {
      myPlayer = new Random();
      pchose = true;
    } else {
      myBot = new Random();
      mode++;
    }
  }
}
