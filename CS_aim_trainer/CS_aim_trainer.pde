Roundel roundel1;
int mouseClicks;
int score=0;
int accuracy;
int targetsHit;
void setup() {
  size(1000, 800);
  rectMode(CENTER);
  background(#CECECE);
  roundel1 = new Roundel();
  textSize(26);
  textAlign(CENTER, CENTER);
  targetsHit=0;
  mouseClicks=0;
}

void draw() {
  background(#CECECE);
  roundel1.drawTarget();
  //roundel2.drawTarget();
  fill(255);
  rect(width/2, height/2, 50, 50);
  fill(0);
  text(score, width/2, height/2-5);
  text("Mouse Clicks:", width/2-100, (height/2)-350);
  text("Targets Hit:", width/2-100, (height/2)-300);
  text(mouseClicks, width/2, (height/2)-350);
  text(targetsHit, width/2, (height/2)-300);
  text("Score:",width/2, (height/2)-50);
}

void mousePressed() {
  mouseClicks++;
  if (dist(mouseX, mouseY, roundel1.x, roundel1.y)< (roundel1.radius)) {
    /*println(mouseX, ' ', mouseY);
     println(roundel1.x, ' ', roundel1.y);
     println(dist(mouseX, mouseY, roundel1.x, roundel1.y));
     println(roundel1.radius);*/
    background(#CECECE);
    roundel1 = new Roundel();
    score++;
    targetsHit++;
  } else {
    score--;
  }
}
