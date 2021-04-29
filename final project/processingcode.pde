import processing.serial.*;

Serial myPort;        // The serial port
float inByte = 0;

PFont text1_white; 
PFont text2_white; 

PFont text1_red; 
PFont text2_red; 

PFont TopLeftText;

void setup()
{
  //the background size
  size (1000, 500);

  println(Serial.list()); 

  myPort = new Serial(this, "COM3", 9600); 
  myPort.bufferUntil('\n');

//setting the main background color to black. This background will not be in display as the program works properly
  background(0);
}
void draw()
{
  if (inByte >=0 && inByte <=10)
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
  }

  if (inByte > 11)
  {
    background(0);

    text1_white =createFont("PTMono-Bold", 100);
    textFont(text1_white, 100);
    fill(0);
    text("SAFE!", 620, 450);

    text2_white =createFont("PTMono-Bold", 30);
    textFont(text2_white, 30);
    fill(0);
    text("You are in the SAFE region. Keep it up!", 280, 320);

    TopLeftText =createFont("PTMono-Bold", 30);
    textFont(TopLeftText, 30);
    fill(100);
    stroke(0);
    strokeWeight(30);
    text("Your current position:", 20, 50);
  }
}

//void serialEvent (Serial myPort) 
//{
  // get the ASCII string:
  //String inString = myPort.readStringUntil('\n');

  //if (inString != null) {
    // trim off any whitespace:
   // inString = trim(inString);
    // convert to an int and map to the screen height:
   // inByte = float(inString);
    // to print the "ultrasonic distance measuring sensor" data in the bottom outpt screen
   // println(inByte);
 // }
//}
