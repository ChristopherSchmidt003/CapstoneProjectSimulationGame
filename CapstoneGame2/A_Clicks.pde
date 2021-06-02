void mousePressed() {
  if (mode == INTRO) introClicks();
  else if (mode == RULES) ruleClicks();
  else if (mode == RULES2) rules2Clicks();
  else if (mode == SELECT) selectClicks();
  else if (mode == GAMEOVER) gameoverClicks();
}
