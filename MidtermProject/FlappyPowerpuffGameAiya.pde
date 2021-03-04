/* 
 Intro to IM
 Midterm Project: Flappy Powerpuff Blossom Game
 March 04, 2021
 Written by Aiya Sartbayeva
 */


//gameState 1 is lose of game, 0 is actual game, -1 is welcome page, 2 is win page
import processing.sound.*; //importing sound
SoundFile pass;
SoundFile fail;
Dora dora; 
Timer countDownTimer;
int timeLeft;
PImage background, topPipe, bottomPipe; //background,player
int backgroundX, backgroundY, g;
int gameState, score;
boolean betweenPipesLastFrame = false;

Pipe[] pipes;

//ONE TIME RUN
void setup() {
  size(800, 525);
  pass = new SoundFile(this, "pass.mp3"); //initialize sound for passing pipes
  fail = new SoundFile(this, "lose.mp3"); //initialize sound for losing game
  dora = new Dora(); //initialize object of main character
  background = loadImage("nature.png");
  g = 1; //gravity == speed of downward acceleration
  pipes = new Pipe[5]; //creating the array of pipes

  for (int i = 0; i < pipes.length; i++) //initializing the array of pipes
  {
    pipes[i] = new Pipe();
    pipes[i].pipeX = width + 200*i; //200 is distance between pipes in x axis
    pipes[i].pipeY = (int)random(-120, 0); //random heights of pipes
  }

  gameState= -1; //starting window
  countDownTimer = new Timer (1000); //initializing timer
  timeLeft = 25;
}

//Main Game Loop
void draw()
{
  if (gameState == -1) //starting window
  {
    startScreen();
  } else if (gameState==0) //game window
  {
    setBackground(); //method to set background
    setPipes(); //method to set pipes
    dora(); //display character on top
    score(); //display score
    if (countDownTimer.complete() == true) { //change of time
      if (timeLeft > 1 ) {
        timeLeft = timeLeft - 1;
        countDownTimer.start();
      } else {
        gameState = 2;
      }
    }
    fill(0);
    textAlign(LEFT);
    textSize(25);
    text("time left: " + timeLeft, 40, 40);
  } else if (gameState==1) //lose
  { 
    losepage();
  } else if (gameState==2) //win
  {
    winpage();
  }
}

void losepage() //page for loser
{
  fill(220, 180);
  rect(70, 180, 665, 160);
  textSize(30);
  fill(255, 0, 0);
  text("You lose! Your score is " + score + ".", width/2-200, height/2-20);
  fill(255, 0, 0);
  rect(150, 270, 220, 50);
  textSize(20);
  fill(255);
  text("PLAY AGAIN", 200, 300);
  fill(255, 0, 0);
  rect(440, 270, 220, 50);
  textSize(20);
  fill(255);
  text("EXIT", 530, 300);

  if (mousePressed && mouseX>150 && mouseX<370 && mouseY>270 && mouseY<320) {
    resetGame();
  } 
  if (mousePressed && mouseX>440 && mouseX<660 && mouseY>270 && mouseY<320) {
    exit();
  }
}
void winpage() //page for winner
{
  fill(220, 180);
  rect(70, 180, 665, 160);
  textSize(30);
  fill(36, 201, 11); //green text
  text("Congrats, you won! Your score is " + score + ". Good job!!!", width/2-200, height/2-20);
  fill(255, 0, 0);
  rect(150, 270, 220, 50);
  textSize(20);
  fill(255);
  text("PLAY AGAIN", 200, 300);
  fill(255, 0, 0);
  rect(440, 270, 220, 50);
  textSize(20);
  fill(255);
  text("EXIT", 530, 300);

  if (mousePressed) {
    resetGame();
  }
  if (mousePressed && mouseX>440 && mouseX<660 && mouseY>270 && mouseY<320) {
    exit();
  }
}

void score() //display score
{ 
  fill(0);
  textAlign(RIGHT);
  textSize(25);
  text("score: " + score, 750, 40);
}

void startScreen() //display welcome page
{
  image(background, 0, 0);
  fill(220, 180);
  rect(70, 180, 680, 160);
  textAlign(CENTER);
  textSize(25);
  fill(255, 0, 0);
  text("Welcome to Flappy Powerpuff Blossom Game:)", width/2, height/2-30);
  text("click anywhere to play!!!", width/2, height/2+60); 
  textSize(15);
  fill(0);
  text("instruction: control a powerpuff girl using space button and\ntry to fly between columns of golden pipes without hitting them", width/2, height/2+5);

  if (gameState==-1 && mousePressed)
  {
    dora.doraY = height/2; //initial position of character is in the half of height of window
    gameState = 0; //actual game
    countDownTimer.start();
  }
}

void setPipes() { //display pipes
  //move the pipes
  int falses = 0; //number of pipes between which character is not found
  for (int i=0; i < pipes.length; i++) { 
    image(pipes[i].topPipe, pipes[i].pipeX, pipes[i].pipeY); //display pipes
    image(pipes[i].bottomPipe, pipes[i].pipeX, pipes[i].pipeY + pipes[i].pipeH + 295); //175 - pipe height, 295 - minimum gap between 2 pipes b/c 295+175+55 = 525(height of window)
    pipes[i].pipeX-= 3;//change of x value of character
    if (pipes[i].pipeX < -200) //if pipes are out of indow
    { 
      pipes[i].pipeX = width;
    }
    //check for collision
    if (!(dora.doraX+73 <= pipes[i].pipeX) && !(dora.doraX+73 >= pipes[i].pipeX+64)) //check if character is inside the gap between 2 pipes for X value
    { //64 - pipe weight
      if (!(dora.doraY >= pipes[i].pipeY+175) || !(dora.doraY+100 <= pipes[i].pipeY + 175 +295)) //check if character is outside the gap between 2 pipes for Y value
      {
        gameState = 1; //end of game
        fail.play(); //play fail sound
      } else 
      {
        betweenPipesLastFrame = true; //character is in gap between pipes
      }
    } else falses++; //incrementing number of gaps between pipes where character is not found
  }

  if (falses==pipes.length && betweenPipesLastFrame) //increment score when character is out of gap between pipes
  {
    betweenPipesLastFrame = false; //character is outside of gap between pipes
    pass.play(); //play pass sound
    score++; //incrementing score
  }
}

void dora() { //display dora
  dora.display(); 
  dora.update(); 
  dora.updateYV(g);
  if (dora.isoutsideofwindow())
  {
    fail.play();
    gameState=1; //end of game
  }
}

void keyPressed() { //pressing key
  if (gameState==0 && key==' ') {
    dora.doraYV = -15; //character jumps up
  }
}

void setBackground() //setting background
{
  image(background, backgroundX, backgroundY); 
  image(background, backgroundX + background.width, backgroundY); //animates the background until the edge of width
  backgroundX = backgroundX - 2; //animates the background
  if (backgroundX < -background.width)
  {
    backgroundX = 0; //resets it once first image is done
  }
}

void resetGame() {
  dora.doraY = 10;//height/2; //initial position of character is in the half of height of window
  countDownTimer.start();
  for (int i = 0; i < pipes.length; i++) //initializing the array of pipes
  {
    pipes[i].pipeX = width + 200*i; //200 is distance between pipes in x axis
    pipes[i].pipeY = (int)random(-120, 0); //random heights of pipes
  }
  g = 1; //gravitation
  gameState = -1; //welcome page
  score = 0; //score is 0
  dora.doraYV = 0; //speed is 0
  timeLeft = 25; //timer for 25 seconds
}

class Pipe {
  PImage topPipe, bottomPipe;
  float pipeX;
  float pipeY;
  float pipeW;
  float pipeH;

  Pipe() {
    bottomPipe = loadImage("bpipeyellow.png");
    topPipe = loadImage("tpipeyellow.png");
    pipeW = topPipe.width;
    pipeH = topPipe.height;
  }
 
}

class Timer {
  int startTime;
  int interval;

  Timer(int timeInterval) {
    interval = timeInterval;
  }
  void start() {
    startTime = millis();
  }

  boolean complete() {
    int elapsedTime = millis() - startTime;
    if (elapsedTime > interval) {
      return true;
    } else {
      return false;
    }
  }
}

class Dora {
  PImage img;
  float doraX;
  float doraY;
  float doraYV;

  Dora() {
    img = loadImage("cutegirl.png");
    doraX = img.width;
    doraY = img.height;
  }

  void setLocation(float y) { //change y value of dora
    doraY = y;
  }

  void display() { //displaying dora
    image(img, doraX, doraY);
  }

  void update() { //update y
    doraY += doraYV;
  }

  void updateYV(int value) { //increase speed by given value
    doraYV += value;
  }
  boolean isoutsideofwindow() {
    return (dora.doraY > height || dora.doraY < 0);
  }
}
