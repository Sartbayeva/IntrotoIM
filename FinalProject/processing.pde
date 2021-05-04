import processing.serial.*; //to read and write on the Serial port

Serial myPort;        //declare the Serial port that will be used in this program
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
    text("|WARNING!|", 230, 260);

    text2_red =createFont("PTMono-Bold", 30);
    textFont(text2_red, 30);
    fill(0);
    text("For your safety, please move back!", 270, 330);

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(255);
    stroke(0);
    strokeWeight(30); 
    text("Your current position:", 20, 50);
  } else
  {
    background(0,255,0);

    text1_white =createFont("PTMono-Bold", 100);
    textFont(text1_white, 100);
    fill(0);
    text("|SAFE|", 340, 250);

    text2_white =createFont("PTMono-Bold", 30);
    textFont(text2_white, 30);
    fill(0);
    text("You are in the safe region. Go infinity and beyond!", 160, 330);

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(255);
    stroke(0);
    strokeWeight(30);
    text("Your current position:", 20, 50);
  }
}

void serialEvent (Serial myPort) 
{
  String s = myPort.readStringUntil('\n'); // get the ASCII string
  s = trim(s);
  if (s != null) {
    message = (int(s));
    println(message);
    println(s);
  }
}
