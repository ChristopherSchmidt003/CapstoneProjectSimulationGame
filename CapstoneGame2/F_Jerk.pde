class Jerk extends Bot {
  //only gives if it has more score than opponent

  void act () {
    if (turnCount == 0) {
      give = true;
    } else {
      if (money == blueMoney) {
        if (redMoney < blueMoney) {
          give = true;
        } else {
          hold = true;
        }
      } else if (money == redMoney) {
        if (blueMoney < redMoney) {
          give = true;
        } else {
          hold = true;
        }
      }
    }
  }
}
