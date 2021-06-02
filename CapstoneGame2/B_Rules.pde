void rules() {
  background(black);
  
  fill(white);
  textSize(45);
  text("Select your Rules", width/2, height/8);
  
  fill(white);
  textSize(30);
  text("Give Amount", width/5, height/3);
  text(give, width/5, height*5/12);
  ellipse(width/5, height*13/24, 50,50);
  ellipse(width/5, height*2/3, 50,50);
  fill(black);
  textSize(30);
  text("+", width/5, height*51/96);
  text("-", width/5, height*63/96);
  
  fill(white);
  textSize(30);
  text("Co-op Return", width/2, height/3);
  text(coop, width/2, height*5/12);
  ellipse(width/2, height*13/24, 50,50);
  ellipse(width/2, height*2/3, 50,50);
  fill(black);
  textSize(30);
  text("+", width/2, height*51/96);
  text("-", width/2, height*63/96);
  
  fill(white);
  textSize(30);
  text("Cheat Return", width*4/5, height/3);
  text(cheat, width*4/5, height*5/12);
  ellipse(width*4/5, height*13/24, 50,50);
  ellipse(width*4/5, height*2/3, 50,50);
  fill(black);
  textSize(30);
  text("+", width*4/5, height*51/96);
  text("-", width*4/5, height*63/96);
  
  fill(white);
  text("All done? Click here ----->", width/3, height*7/8);
  ellipse(width*2/3, height*7/8, 50,50);
}

void ruleClicks() {
  if (dist(mouseX,mouseY,width/5,height*13/24) <= 50){
    give++;
  } else if (dist(mouseX,mouseY,width/5,height*2/3) <= 50){
    give--;
  } else if (dist(mouseX,mouseY,width/2,height*13/24) <= 50){
    coop++;
  } else if (dist(mouseX,mouseY,width/2,height*2/3) <= 50){
    coop--;
  } else if (dist(mouseX,mouseY,width*4/5,height*13/24) <= 50){
    cheat++;
  } else if (dist(mouseX,mouseY,width*4/5,height*2/3) <= 50){
    cheat--;
  } else if (dist(mouseX,mouseY,width*2/3,height*7/8) <= 50){
    mode++;
  }
}
