/*
Nicole Carpenter
 Creative Coding
 Week 4:  Create an algorithmic design that repeats some piece 
 at least 10 times. Create a mouse or keyboard interface that 
 changes an element of the design.
 
 */

void setup() {
  size(675, 675);
  background(250);
  colorMode(HSB, 250, 100, 100);
}

void draw() {
  if (mousePressed) { 
    for (float x=(random(0, 50)); x < 600; x+=75) {
      for (float y=(random(0, 50)); y < 540; y+=75) {
        if (mouseY>y && mouseY<y+50 && mouseX>x && mouseX<x+50) {
          fill(random(75, 125), 100, 75);
        } else {
          fill(255);
        }
        rect(x, y, 75, 75);
      }
    }
  }
}
