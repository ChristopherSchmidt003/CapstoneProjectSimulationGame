void gameover() {
  background(black);
  
  textSize(60);
  
  if (myPlayer.money > myBot.money){
    fill(blue);
    text("Blue Wins!", width/2, height/4);
    textSize(30);
    fill(blue);
    text("Blue's score: " + myPlayer.money, width/2, height/2);
    fill(red);
    text("Red's score: " + myBot.money, width/2, height/2+60);
  }
  
  if (myBot.money > myPlayer.money){
    fill(red);
    text("Opponent Wins!", width/2, height/4);
    textSize(30);
    fill(blue);
    text("Blue's score: " + myPlayer.money, width/2, height/2);
    fill(red);
    text("Red's score: " + myBot.money, width/2, height/2+60);
  }
  
  if (myPlayer.money == myBot.money){
    fill(white);
    text("It's a Draw!", width/2, height/4);
    textSize(30);
    fill(blue);
    text("Blue's score: " + myPlayer.money, width/2, height/2);
    fill(red);
    text("Red's score: " + myBot.money, width/2, height/2+60);
  }
  
  fill(white);
  textSize(30);
  text("Back to Player Select", width/4, height*3/4);
  ellipse(width/4, height*7/8, 50, 50);
  text("Back to Rule Select", width*3/4, height*3/4);
  ellipse(width*3/4, height*7/8, 50, 50);
}

void gameoverClicks() {
  if (dist(mouseX,mouseY,width/4,height*7/8) <= 50) {
    myPlayer = new Bot();
    myBot    = new Bot();
    pchose = false;
    turnCount = 0;
    mode = SELECT;
  }
  if (dist(mouseX,mouseY,width*3/4,height*7/8) <= 50) {
    timeChosen = false;
    maxTurnsChosen = false;
    startingMoneyChosen = false;
    myPlayer = new Bot();
    myBot    = new Bot();
    pchose = false;
    turnCount = 0;
    mode = RULES;
  }
}
