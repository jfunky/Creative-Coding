/*
Nicole Carpenter
 Creative Coding
 Midterm Project
 10/7/2020
 Catch the Apples!
 */

PImage img;

//Basket ints
int circleX = (250);
int circleY = (405);
int counter = 0;

//Int to change screens
int screenNum; 

//Font
PFont f;

//Death Orbs
Orb myOrb1;
Orb myOrb2;
Orb myOrb3;
Orb myOrb4;
Orb myOrb5;
Orb myOrb6;
Orb myOrb7;
Orb myOrb8;
Orb myOrb9;
Orb myOrb10;
Orb myOrb11;
Orb myOrb12;
Orb myOrb13;
Orb myOrb14;
Orb myOrb15;

Apple myApple1;
Apple myApple2;
Apple myApple3;
Apple myApple4;
Apple myApple5;
Apple myApple6;

void setup() {
  size(500, 500);
  img = loadImage("Sky.jpg");

  f = loadFont("AdobeDevanagari-Bold-48.vlw");
  fill(255, 255, 0);
  textFont(f, 15);
  tint(200, 200, 200);
  noStroke();

  //Death Orbs
  myOrb1 = new Orb();
  myOrb2 = new Orb();
  myOrb3 = new Orb();
  myOrb4 = new Orb();
  myOrb5 = new Orb();
  myOrb6 = new Orb();
  myOrb7 = new Orb();
  myOrb8 = new Orb();
  myOrb9 = new Orb();
  myOrb10 = new Orb();
  myOrb11 = new Orb();
  myOrb12 = new Orb();
  myOrb13 = new Orb();
  myOrb14 = new Orb();
  myOrb15 = new Orb();

  //Apples!!
  myApple1 = new Apple();
  myApple2 = new Apple();
  myApple3 = new Apple();
  myApple4 = new Apple();
  myApple5 = new Apple();
  myApple6 = new Apple();
}

void draw() {
  background(255);
  switch(screenNum) {
    //Start Screen
  case 0:
    tint(0, 150, 255);
    image(img, 0, 0, 500, 500);
    //Start Screen Text
    textAlign (CENTER);
    text("Catch as many Apples that you can", 250, 135);
    text ("using the Right and Left arrow keys.", 250, 160);
    text ("Press ENTER to Start", 250, 185);

    break;
    //Play Screen
  case 1:
    //Background Picture
    tint(0, 150, 255);
    image(img, 0, 0, 500, 500);
    noTint();
    
    //textAlign (LEFT);
    //displays score on screen
    //fill(255, 255, 200);
    //text("Apples Acquired" + " " + scrnMins + " , 20, 25);

    //Death Balls
    myOrb1.fall();
    myOrb1.display();

    myOrb2.fall();
    myOrb2.display();

    myOrb3.fall();
    myOrb3.display();

    myOrb4.fall();
    myOrb4.display();

    myOrb5.fall();
    myOrb5.display();

    myOrb6.fall();
    myOrb6.display();

    myOrb7.fall();
    myOrb7.display();

    myOrb8.fall();
    myOrb8.display();

    myOrb9.fall();
    myOrb9.display();

    myOrb10.fall();
    myOrb10.display();

    myOrb11.fall();
    myOrb11.display();

    myOrb12.fall();
    myOrb12.display();

    myOrb13.fall();
    myOrb13.display();

    myOrb14.fall();
    myOrb14.display();

    myOrb15.fall();
    myOrb15.display();

    //Apples!!
    myApple1.fall();
    myApple1.display();

    myApple2.fall();
    myApple2.display();

    myApple3.fall();
    myApple3.display();

    myApple4.fall();
    myApple4.display();

    myApple5.fall();
    myApple5.display();

    myApple6.fall();
    myApple6.display();

}

  //Basket
  if (key == CODED) {
    if (keyCode == LEFT) {
      circleX--;
    } else if (keyCode == RIGHT) {
      circleX++;
    }
    //Code for basket
    fill(200, 0, 0);
    rect(circleX, circleY, 20, 20);
  }

  if (circleX <= 0 || circleX >= 500 ) {
    //Future fire
  }
  //Bottom
  fill(0);
  noStroke();
  rect (0, 425, 500, 500);
}
void keyReleased() {
  if (screenNum == 0 && keyCode == ENTER) { //starts game
    screenNum = 1;
  } 
}
