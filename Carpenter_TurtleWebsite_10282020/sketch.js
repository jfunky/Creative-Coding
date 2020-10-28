var x;
var y;

function setup() {
  createCanvas(675, 675);
  background(255);
  colorMode(HSB, 250, 100, 100);
}

function draw() {
  textSize(10);
  textAlign(CENTER);
  text('Where art thou? Where art thou?', width / 2, 225);
  text('The young turtle sleeps.', width / 2, 250);
  text('*click for turtles*', width / 2, 275);

  if (mouseIsPressed) {
    for (x = (random(0, 50)); x < 600; x += 75) {
      for (y = (random(0, 50)); y < 540; y += 75) {
        if (mouseY > y && mouseY < y + 50 && mouseX > x && mouseX < x + 50) {
          fill(random(75, 125), 100, 70);
        } else {
          noFill();
        }
        rect(x, y, 75, 75);
      }
    }
  }
}

