class Bot {
  //alwaysgives(done)
  //alwaystakes(done)
  //random(done)
  //Copycat(done) copys players previous move
  //Jerk(done) only gives when it has more points, otherwise holds
  //Grudger(done) gives until other player holds, then holds forever

  boolean give, hold; //give or hold
  boolean action; //did the object make an action
  boolean held; //object did not give

  int money = startingMoney; //player and bot money/score

  Bot() {
    give = false;
    hold = false;
    action = false;
    money = startingMoney;
  }

  void act() {
    if (pot > 0) give = true;
    else hold = true;
  }
}
