
class Apple {
  color a;
  float xpos;
  float ypos;
  float yspeed;


  Apple() {
    a = color(255, 50, 50);
    xpos = random(0, 500);
    ypos = random(-450, 0);
    yspeed = 1;
  }

  void display () {
    ellipseMode(CENTER);
    fill(a);
    stroke(255, 10, 10);
    ellipse(xpos, ypos, 10, 10);
  }

  void fall () {
    ypos = ypos + yspeed;
    if (ypos > height) {
      xpos = random(0, 500);
      ypos = random(-200, 0);
    }
  }
}
