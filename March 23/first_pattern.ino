/* 
Introduction to Interactive Media
Arduino First Assignment: Light Pattern 1
Aiya Sartbayeva
23 March,2021
 */
//LED lights
const int yLED = 4;
const int rLED = 5;
const int gLED = 6;
const int bLED = 7;
//Buttons
const int yBUTTON = A4;
const int rBUTTON = A3;
const int gBUTTON = A2;
const int bBUTTON = A1;

void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);

  //all the buttons as input
  pinMode(yBUTTON, INPUT);
  pinMode(rBUTTON, INPUT);
  pinMode(gBUTTON, INPUT);
  pinMode(bBUTTON, INPUT);

  //all the LED lights as output
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
}

void loop() {
  //read the input pins
  int yBUTTONState = digitalRead(yBUTTON);
  int rBUTTONState = digitalRead(rBUTTON);
  int gBUTTONState = digitalRead(gBUTTON);
  int bBUTTONState = digitalRead(bBUTTON);

  //if yellow button is pressed
  if (yBUTTONState == HIGH) {
    digitalWrite(yLED, HIGH);

  } else {
    digitalWrite(yLED, LOW);
  }

  //if red button is pressed 
  if (rBUTTONState == HIGH) {
    digitalWrite(yLED, HIGH);
    digitalWrite(rLED, HIGH);

  } else {
    digitalWrite(yLED, LOW);
    digitalWrite(rLED, LOW);
  }

  //if green button is pressed
  if (gBUTTONState == HIGH) {
    digitalWrite(yLED, HIGH);
    digitalWrite(rLED, HIGH);
    digitalWrite(gLED, HIGH);

  } else {
    digitalWrite(yLED, LOW);
    digitalWrite(rLED, LOW);
    digitalWrite(gLED, LOW);
  }
  //if blue button is pressed 
  if (bBUTTONState == HIGH) {
    digitalWrite(yLED, HIGH);
    digitalWrite(rLED, HIGH);
    digitalWrite(gLED, HIGH);
    digitalWrite(bLED, HIGH);

  } else {
    digitalWrite(yLED, LOW);
    digitalWrite(rLED, LOW);
    digitalWrite(gLED, LOW);
    digitalWrite(bLED, LOW);
  }
}
