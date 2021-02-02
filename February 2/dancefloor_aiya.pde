/* 
 Intro to IM
 Assignment 2:  Loop Artwork
 February 02, 2021
 Written by Aiya Sartbayeva
 */

void setup() {
  size(700, 500); // setting the width and height to 700 and 500
  frameRate(2); //  to show image slower
}

void draw() {
  for (int y = 0; y < height; y = y + 50) { // loop through each y position
    for (int x = 0; x < width; x = x + 50) { // loop through each x position
      strokeWeight(1); // setting the width of stroke to 1
      fill(random(255), random(255), random(255)); // setting the random color
      rect(x, y, 200, 250); // drawing rectangle
      fill(random(255), random(255), random(255)); // setting the random color
      rect(x+5, y+5, 240, 240); // drawing inner rectangle
      fill(random(255), random(255), random(255)); // setting the random color
      circle(x+28, y+28, 35); // drawing circle
    }
  }
}
