int trig = 10;
int echo = 11;
long duration;
long distance;
int button;
int led1 = 2;
int led2 = 3;
int led3 = 4;

void setup() {
  pinMode(echo, INPUT);
  pinMode(trig, OUTPUT);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  digitalWrite(trig, LOW); //triggers on/off and then reads data
  delayMicroseconds(2);
  digitalWrite(trig, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  duration = pulseIn(echo, HIGH);
  distance = (duration / 2) * .0344;    //344 m/s = speed of sound. and converting into cm
  
  int notes[7] = {261, 294, 329, 349, 392, 440, 494}; //Putting several notes in an array
  //          mid C  D   E   F   G   A   B

  button = digitalRead(7); //reading button

  if (distance < 0 || distance > 50 || button == LOW) { //if not presed and not in front

    noTone(12); //dont play music
    digitalWrite(led1, LOW);
    digitalWrite(led2, LOW);
    digitalWrite(led3, LOW);
  }

  else if ((button == HIGH)) {  //if pressed

    int sound = map(distance, 0, 50, 0, 6);  //map distance to the array of notes
    tone(12, notes[sound]);  //call a certain note depending on distance
    digitalWrite(led1, HIGH);
    digitalWrite(led2, HIGH);
    digitalWrite(led3, HIGH);
  }
}
