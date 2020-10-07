
class Orb {
  color b;
  float xpos;
  float ypos;
  float yspeed;


  Orb() {
    b = color(0);
    xpos = random(0, 500);
    ypos = random(-450, 0);
    yspeed = 1;
  }

  void display () {
    ellipseMode(CENTER);
    fill(b);
    stroke(50, 50, 50);
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
