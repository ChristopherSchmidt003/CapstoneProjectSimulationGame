void rules2() {
  background(black);

  fill(white);
  textSize(50);
  text("Rules Continued", width/2, height/8);

  fill(white);
  textSize(30);
  text("Game Speed", width/5, height*7/24);
  ellipse(width/5, height*5/12, 50, 50);
  ellipse(width/5, height*13/24, 50, 50);
  ellipse(width/5, height*2/3, 50, 50);
  ellipse(width/5, height*19/24, 50, 50);
  fill(black);
  textSize(15);
  text("2sec", width/5, height*39/96+5);
  text("1sec", width/5, height*51/96+5);
  text("0.5sec", width/5, height*63/96+5);
  text("0sec", width/5, height*75/96+5);
  
  if (timeChosen) {
  fill(white);
  textSize(30);
  text("Max Turns", width/2, height*7/24);
  ellipse(width/2, height*5/12, 50, 50);
  ellipse(width/2, height*13/24, 50, 50);
  ellipse(width/2, height*2/3, 50, 50);
  ellipse(width/2, height*19/24, 50, 50);
  fill(black);
  textSize(15);
  text("5", width/2, height*39/96+5);
  text("10", width/2, height*51/96+5);
  text("15", width/2, height*63/96+5);
  text("20", width/2, height*75/96+5);
  }
  
  if (maxTurnsChosen) {
  fill(white);
  textSize(30);
  text("Starting Money", width*4/5, height*7/24);
  ellipse(width*4/5, height*5/12, 50, 50);
  ellipse(width*4/5, height*13/24, 50, 50);
  ellipse(width*4/5, height*2/3, 50, 50);
  ellipse(width*4/5, height*19/24, 50, 50);
  fill(black);
  textSize(15);
  text("5", width*4/5, height*39/96+5);
  text("10", width*4/5, height*51/96+5);
  text("15", width*4/5, height*63/96+5);
  text("20", width*4/5, height*75/96+5);
  }

  if (startingMoneyChosen) mode++;
}

void rules2Clicks() {
  if (timeChosen == false) {
    if (dist(mouseX, mouseY, width/5, height*5/12) <= 50) {
      time = 120;
      timeChosen = true;
    }
    if (dist(mouseX, mouseY, width/5, height*13/24) <= 50) {
      time = 60;
      timeChosen = true;
    }
    if (dist(mouseX, mouseY, width/5, height*2/3) <= 50) {
      time = 30;
      timeChosen = true;
    }
    if (dist(mouseX, mouseY, width/5, height*19/24) <= 50) {
      time = 0;
      timeChosen = true;
    }
  }

  if (maxTurnsChosen == false) {
    if (dist(mouseX, mouseY, width/2, height*5/12) <= 50) {
      turnMax = 5;
      maxTurnsChosen = true;
    }
    if (dist(mouseX, mouseY, width/2, height*13/24) <= 50) {
      turnMax = 10;
      maxTurnsChosen = true;
    }
    if (dist(mouseX, mouseY, width/2, height*2/3) <= 50) {
      turnMax = 15;
      maxTurnsChosen = true;
    }
    if (dist(mouseX, mouseY, width/2, height*19/24) <= 50) {
      turnMax = 20;
      maxTurnsChosen = true;
    }
  }

  if (startingMoneyChosen == false) {
    if (dist(mouseX, mouseY, width*4/5, height*5/12) <= 50) {
      startingMoney = 5;
      startingMoneyChosen = true;
    }
    if (dist(mouseX, mouseY, width*4/5, height/2) <= 50) {
      startingMoney = 10;
      startingMoneyChosen = true;
    }
    if (dist(mouseX, mouseY, width*4/5, height*2/3) <= 50) {
      startingMoney = 15;
      startingMoneyChosen = true;
    }
    if (dist(mouseX, mouseY, width*4/5, height*19/24) <= 50) {
      startingMoney = 20;
      startingMoneyChosen = true;
    }
  }
}
