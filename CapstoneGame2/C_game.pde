void game() {
  //println(check);

  blueMoney = myPlayer.money;
  redMoney  = myBot.money;

  if (timer <= 0) {
    if (myPlayer.action == false) {
      myPlayer.act();
    }
    if (myBot.action == false) {
      myBot.act();
    }
  }

  //-------------------------------------------------------------

  //Player decision
  if (myPlayer.give == true) {
    if (myPlayer.action == false) {
      myPlayer.money-= give;
      pot++;
      myPlayer.give = false;
      myPlayer.action = true;
      timer = time;
    }
  }
  if (myPlayer.hold == true) {
    if (myPlayer.action == false) {
      myPlayer.hold = false;
      myPlayer.action = true;
      myPlayer.held = true;
      timer = time;
    }
  }

  //Bot decision
  if (myBot.give == true) {
    if (myBot.action == false) {
      myBot.money-= give;
      pot++;
      myBot.give = false;
      myBot.action = true;
      timer = time;
    }
  }
  if (myBot.hold == true) {
    if (myBot.action == false) {
      myBot.hold = false;
      myBot.action = true;
      myBot.held = true;
      timer = time;
    }
  }

  //------------------------------------------------------------

  //UI
  background (black);

  fill(white);
  textSize(40);
  text("game", width/2, height/12);
  textSize(30);

  fill(white);
  ellipse(width/6, height/3, 125, 125);
  fill(black);
  text("give", width/6, height/3-6);

  fill(white);
  ellipse(width/6, height*2/3, 125, 125);
  fill(black);
  text("Hold", width/6, height*2/3-6);

  fill(white);
  ellipse(width*5/6, height/3, 125, 125);
  fill(black);
  text("give", width*5/6, height/3-6);

  fill(white);
  ellipse(width*5/6, height*2/3, 125, 125);
  fill(black);
  text("Hold", width*5/6, height*2/3-6);

  fill(blue);
  text("P1 money:" + myPlayer.money, width/6, height/2);

  fill(red);
  text("P2 money:" + myBot.money, width*5/6, height/2);

  fill(white);
  text(pot, width/2, height/2);

  fill(white);
  text("Turn: " + turnCount, width/2, height*3/4);

  //--------------------------------------------------------------

  if (pot == 2 && myPlayer.action && myBot.action && timer <= 0) {
    timer = time;
    myPlayer.money += coop;
    myBot.money += coop;
    pot = 0;
    myPlayer.action = false;
    myBot.action = false;
    turnCount++;
  }
  if (pot == 1 && myPlayer.action && myBot.action && myPlayer.held && timer <= 0) {
    timer = time;
    myPlayer.money += cheat;
    pot = 0;
    myPlayer.held = false;
    myPlayer.action = false;
    myBot.action = false;
    turnCount++;
  }
  if (pot == 1 && myPlayer.action && myBot.action && myBot.held && timer <= 0) {
    timer = time;
    myBot.money += cheat;
    pot = 0;
    myBot.held = false;
    myPlayer.action = false;
    myBot.action = false;
    turnCount++;
  }
  if (pot == 0 && myPlayer.action &&  myBot.action && timer <=0) {
    timer = time;
    myPlayer.action = false;
    myPlayer.held = false;
    myBot.action = false;
    myBot.held = false;
    turnCount++;
  }

  if (turnCount >= turnMax) mode++;

  timer--;
  check++;
}
