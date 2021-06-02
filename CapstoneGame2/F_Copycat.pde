class Copycat extends Bot {
  int pastMoney = 10;

  void act () {
    if (turnCount == 0) {
      give = true;
    } else {
      if (pastMoney >= money) {
        hold = true;
      } else {
        give = true;
      }
    }
    
    pastMoney = money;
  }
  
}
