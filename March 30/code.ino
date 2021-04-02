/*
  Introduction to Interactive Media
  Arduino Second Addignment: "Help your children learn about traffic lights"
  Aiya Sartbayeva
  March 30, 2021
*/

//constants to set pin numbers for the LEDs, button and potentiometer
const int R_ledPin = 13; //red LED is connected to digital PIN 13
const int Y_ledPin = 12; //yellow LED is connected to digital PIN 12
const int G_ledPin = 11; //green LED is connected to digital PIN 11
const int potPin = A0; //potentiometer is connected to analog 0 pin
const int buttonPin = 4; //switch is connected to digital PIN 4

// set the LED pins as output, potentiometer and button as input:
void setup() {
  pinMode(A0, INPUT);
  pinMode(4, INPUT);
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  Serial.begin(9600); //initialize the serial communication
}

void loop() {
  int buttonState = digitalRead(4); //get a reading from the switch on 4
  int potMeasure = analogRead(A0); //get a reading from the potentiometer on A0
  Serial.println(potMeasure); //print out the value you read
  delay(100); // a delay makes values easier to read
  if (potMeasure < 512)
  {
    digitalWrite(13, HIGH);
    digitalWrite(12, LOW);
    digitalWrite(11, LOW);
    if (buttonState == HIGH) {
      digitalWrite(13, LOW);
      digitalWrite(12, HIGH);
      delay(1500);
      digitalWrite(11, HIGH);
      delay(1500);
    }
  }
  else if (potMeasure < 768)
  {
    digitalWrite(13, LOW);
    digitalWrite(12, HIGH);
    digitalWrite(11, LOW);
    if (buttonState == HIGH) {
      digitalWrite(12, LOW);
      digitalWrite(13, HIGH);
      delay(1500);
      digitalWrite(11, HIGH);
      delay(1500);
    }
  }
  else if (potMeasure < 1024)
  {
    digitalWrite(13, LOW);
    digitalWrite(12, LOW);
    digitalWrite(11, HIGH);
    if (buttonState == HIGH) {
      digitalWrite(11, LOW);
      digitalWrite(12, HIGH);
      delay(1500);
      digitalWrite(13, HIGH);
      delay(1500);
    }
  }
}
