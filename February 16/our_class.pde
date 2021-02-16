/* 
 Intro to IM
 Assignment 4:  Generative text or data visualisation
 February 16, 2021
 Written by Aiya Sartbayeva
 */
 
PImage background;
String [] ourclass = {"Mr.Michael", "Aiya", "Rebecca", "Soojin", "Maitha", "Riley", "Nelda", "Nouf", "Deborah", "Ariya", "Nakyeong", "Haneen", "Chinonyerem", "Alex", "Rhea", "Ayush"}; //string data type in array
String textHolder = "test";
void setup() {
  size(1000, 550);
  tint(255, 50); //opacity of the image
  background = loadImage("interactivemedia.png");
  image (background, 0, 0, 1000, 550);
  textSize(30);
  textAlign(CENTER);
}

void draw() {
}

void mousePressed() { //when click the nouse random names are chosen using length builtin
  PFont f = createFont("Georgia", 84); //loading font
  textFont(f);
  textSize(random(15, 50));
  fill(random(255), random(55), random(190));
  textHolder = ourclass[int(random(ourclass.length))]; //convert string to integer
  text(textHolder, mouseX, mouseY);
}
