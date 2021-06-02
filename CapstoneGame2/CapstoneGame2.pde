
//colors
color blue       = #174DDB;
color red        = #D50D0D;
color yellow     = #FFD000;
color black      = #000000;
color white      = #FFFFFF;
color green      = #49B142;
color orange     = #F26E02;
color gold       = #FBB829;
color grey       = #767272;

//modes
int mode;
final int INTRO    = 0;
final int RULES    = 1;
final int RULES2   = 2;
final int SELECT   = 3;
final int GAME     = 4;
final int GAMEOVER = 5;

//Choosing players
boolean pchose;

//rule variables
int give = 1, coop = 2, cheat = 2, startingMoney = 10;
boolean timeChosen, maxTurnsChosen, startingMoneyChosen;

//variables
int blueMoney, redMoney;
int pot; // money in the pot contributed by player and bot
int timer = 60; //timer to be able to see whats happening
int time  = 60; //amount of time it waits so I can see whats happening
int turnCount; //counts turns, game ends after certian number of turns
int turnMax = 10;

int check;

//Classes (bot types)
Bot myPlayer;
Bot myBot;

void setup() {
  size (800,600);
  size (800, 600);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  noStroke();
  
  pchose = false;
  
  myPlayer = new Bot();
  myBot = new Bot();
  
  turnCount = 0;
  
  mode = INTRO;
}

void draw() {
  if (mode == INTRO) intro();
  else if (mode == RULES) rules();
  else if (mode == RULES2) rules2();
  else if (mode == SELECT) select();
  else if (mode == GAME) game();
  else if (mode == GAMEOVER) gameover();
  else println("mode error");
}
