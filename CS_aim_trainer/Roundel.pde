class Roundel {

  /* radiuss = new float[1];
   radiuss[0] = radius1;*/

  float x;
  float y;
  float s;
  float radius;

  Roundel() {
    x=random(200, 800);
    y=random(200, 600);
    s=random(0.5, 2);
    radius=(200*s);
  }

  void drawTarget() {
   ellipseMode(CENTER);
    fill(255, 255, 255);
    circle(x, y, radius);
    fill(0);
    circle(x, y, radius*0.8);
    fill (#4340FF);
    circle(x, y, radius*0.60);
    fill (#FA0000);
    circle(x, y, radius*0.4);
    fill (#F5FA00);
    circle(x, y, radius*0.2);
  } 
}
