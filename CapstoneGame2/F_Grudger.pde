class Grudger extends Bot {
  boolean cheated;
  int pastMoney = money;
  
  void act() {
    if (pastMoney > money) {
      cheated = true;
    }
    
    if (cheated == false) {
      give = true;
    } else {
      hold = true;
    }
    
    pastMoney = money;
  }
}
