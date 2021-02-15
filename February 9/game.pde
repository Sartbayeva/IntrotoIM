/* 
 Intro to IM
 Assignment 3:  Object-oriented programming - game/art 
 February 09, 2021
 Written by Aiya Sartbayeva
 */

ArrayList <Bubble> bubbles = new ArrayList <Bubble>(); //arraylist of bubbles
int total = 0; //determine the total
Basket b; //object
int BasketWidth = 100; //determine the width of a basket
int BasketHeight = 80; //determine the height of a basket
PImage background; //determine the variable for an image
int count = 0; //determine the count 

void setup() {  //setup function
  size(680, 360); //setting the width and height to 680 and 360
  background = loadImage("moonasteroid.jpg"); //putting an image as a background
  b = new Basket();
  for (int i=0; i<100; i++) {  //using looping for objects in the list
    bubbles.add(new Bubble());
  }
}
void mousePressed() { //mouse pressed function
  total = total + 1; //incrementing count, increasing the number of balls
}

void draw() { //draw function

  image (background, 0, 0, 680, 360); //drawing and setting background photo's size

  for (int i=0; i<total; i++) { //using for loop to access elements
    bubbles.get(i).ascend();
    int basketx; 
    basketx = b.getx(); //gets x position of basket
    bubbles.get(i).catchball(basketx);
    bubbles.get(i).drawBubbles();
  }
  b.drawBasket();
  b.moveBasket();
  noStroke(); //without stroke
  fill(255, 80); //seeting opasity to 80
  rect(0, 0, 120, 50); //rectangle as a background for score label
  textSize(22); //setting the size of text
  fill(255); //choosing color of text
  text("Score: " + str(count), 10, 30); //showing the score of a user
}


class Basket { //start of class Basket
  int x; 
  int y;
  color BasketColor = color(225);//setting color of basket

  //constructor
  Basket() {
    x = 0;
    y = height - BasketHeight;
  }

  int getx() { //geting the x position of basket
    return x;
  }

  void drawBasket() { //function to draw basket
    strokeWeight(2); //weight of stroke is 2
    stroke(0); //black stroke
    fill(BasketColor); 
    rect(x, y, BasketWidth, BasketHeight, 0, 0, 45, 45); //shape of basket
  }
  void moveBasket() { //function to move basket 
    x = mouseX; //move basket across the x axis
  }
}


class Bubble { //start of class Bubble
  float x;
  float y;
  float radius;
  float yspeed;
  boolean notcaught;
  //constructor
  Bubble() {
    x = random(width);
    y = 0;
    radius = 35;
    yspeed = random(0.1, 2); //seeting random speed for falling the balls
    notcaught = true;
  }
  void ascend() { //function for ascending balls from top to bottom
    y = y + yspeed; //increasing the speed of balls
  }
  void drawBubbles() { //function to draw bubbles
    if (notcaught == true) { 
      stroke(0);
      fill(random(255), 15, random(255));
      ellipse(x, y, radius, radius);
    }
  }
  void catchball(int basketx) { //function to put the balls inside the basket
    if (y > (height - BasketHeight)) {
      if ((x > basketx) && (x < (basketx + BasketWidth))) {
        if (notcaught==true) count = count + 1; //when basket touches a ball for the first time increment a count 
        notcaught = false;
      }
    }
  }
} 



