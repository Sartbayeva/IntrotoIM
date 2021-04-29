import processing.serial.*;

Serial myPort;        // The serial port
int message;

PFont text1_white; 
PFont text2_white; 

PFont text1_red; 
PFont text2_red; 

PFont TopLeftText;

void setup()
{
  //the background size
  size (1000, 500);
  printArray(Serial.list());
  //String portname = Serial.list()[0];
  //println(portname);
  //println(Serial.list()); 

  myPort = new Serial(this, "COM3", 9600); 
  myPort.clear();
  myPort.bufferUntil('\n');

  background(0);
}
void draw()
{
  if (message == 1) 
  {
    background(255, 0, 0);
    text1_red =createFont("PTMono-Bold", 100);
    textFont(text1_red, 100);
    fill(0);
    text("WARNING!", 250, 250);

    text2_red =createFont("PTMono-Bold", 30);
    textFont(text2_red, 30);
    fill(0);
    text("For your safety, please move back!", 260, 330);

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(100);
    stroke(0);
    strokeWeight(30);
    text("Your current position:", 20, 50);
  } else
  {
    background(0);

    text1_white =createFont("PTMono-Bold", 100);
    textFont(text1_white, 100);
    fill(255);
    text("SAFE!", 330, 270);

    text2_white =createFont("PTMono-Bold", 30);
    textFont(text2_white, 30);
    fill(255);
    text("You are in the SAFE region. Go infinity and beyond!", 200, 330);

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(100);
    stroke(0);
    strokeWeight(30);
    text("Your current position:", 20, 50);
  }
}

void serialEvent (Serial myPort) 
{
  String s = myPort.readStringUntil('\n');
  s = trim(s);
  if (s != null) {
    message = (int(s));
    println(message);
    println(s);
  }
}
