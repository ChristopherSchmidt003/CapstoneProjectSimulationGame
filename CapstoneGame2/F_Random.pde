class Random extends Bot {
  double choice;
  
  Random() {
    choice = random(2);
  }
  
  void act(){
    choice = random(2);
    
    if (choice > 1) {
      give = true;
    }
    if (choice <= 1) {
      hold = true;
    }
  }
}
