/* 
Introduction to Interactive Media
Arduino First Assignment: Light Pattern 2
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

  int yBUTTONState = digitalRead (yBUTTON);
  int rBUTTONState = digitalRead (rBUTTON);
  int gBUTTONState = digitalRead (gBUTTON);
  int bBUTTONState = digitalRead (bBUTTON);


  //connectiion of yellow button with yellow LED
  if (yBUTTONState == HIGH) {
    digitalWrite (4, HIGH);
  } else {
    digitalWrite (4, LOW);
  }

  //connection of red button with red LED
  if (rBUTTONState == HIGH) {
    digitalWrite (5, HIGH);
  } else {
    digitalWrite (5, LOW);
  }

  //connection of green button with green LED
  if (gBUTTONState == HIGH) {
    digitalWrite (6, HIGH);
  } else {
    digitalWrite (6, LOW);
  }
  //connection of blue botton with blue LED
  //when it is pressed, the light pattern will release
  if (bBUTTONState == HIGH) {
    digitalWrite(7, HIGH);
    delay(500);
    digitalWrite(7, LOW);
    delay(500);
    digitalWrite(7, HIGH);
    delay(500);
    digitalWrite(7, LOW);
    delay(500);
    lightPattern();
  }

}
void lightPattern() {

  //the light pattern from bottom lights to top and from top to bottom
  digitalWrite(4, HIGH);
  delay(500);
  digitalWrite(4, LOW);
  delay(500);
  digitalWrite(5, HIGH);
  delay(500);
  digitalWrite(5, LOW);
  delay(500);
  digitalWrite(6, HIGH);
  delay(500);
  digitalWrite(6, LOW);
  delay(500);
  digitalWrite(7, HIGH);
  delay(500);
  digitalWrite(7, LOW);
  delay(500);
  digitalWrite(7, HIGH);
  delay(500);
  digitalWrite(7, LOW);
  delay(500);
  digitalWrite(6, HIGH);
  delay(500);
  digitalWrite(6, LOW);
  delay(500);
  digitalWrite(5, HIGH);
  delay(500);
  digitalWrite(5, LOW);
  delay(500);
  digitalWrite(4, HIGH);
  delay(500);
  digitalWrite(4, LOW);
  delay(500);
}
