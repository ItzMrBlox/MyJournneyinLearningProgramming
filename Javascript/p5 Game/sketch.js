//Start screen
let startX = 0;
let startY = 0;


//Player Values
let valueX = 200;
let valueY = 200;
let valueH = 20;
let valueW = 20;
var hit = false;
let tries = 1; 

//Score
let score1 = 0;
let score2 = 'Score: ' + score1;
let scoreX = 0;
let scoreY = 0;
let scoreH = 40;
let scoreW = 40;

////Respawn circle
let respawnX = 200;
let respawnY = 200;
var Rhit = false;

//Speed
let speed = 5;

//Timer
let timestart = 2; 
let time = timestart;
let time2 = 2;
let timer = 'Time left: ' + time;


//Color
let c;

function setup() {
   createCanvas(400, 400);
  scoreX = random(50, 350);
  scoreY = random(50, 350);
  collideDebug(true);
  frameRate(60);
  noStroke();
  
  
}


function draw() {
  
//draw background
    background(150,75,0);

//Functions that are being called
Lava();  
Respawncircle();
ScoreCircle(); 
Player();
TimerCountdown1();
ScoreTimer();
startscreen();
  
  
//Collide of screen - makes sure the player can't escape.
  if (mouseX > 400) {
    mouseX = 400;
  }
    if (mouseX < 0) {
    mouseX = 0;
  }
    if (mouseY > 400) {
    mouseY = 400;
  }
    if (mouseY < 0) {
    mouseY = 0;
  } 
}


function mousePressed() {
  if (tries == 1) {
    valueX = mouseX
    valueY = mouseY
    tries -= 1
  } else {
    return
  }
}
  
  
function keyPressed(){
  if (keyCode === 32) { //if space is pressed
    tries = 1;
    
    valueX = 1000;
    valueY = 1000;
    time = 2;
    timer = 'Time left: ' + time;
    scoreX = random(50, 350);
    scoreY = random(50, 350);
    score1 = 0;
    score2 = 'Score: ' + score1;
    time2 = 2;
    respawnX = 200;
    respawnY = 200;
  }
}

  
  
  
  ///// Functions below /////
  
function Lava() {
   //Changes background to lava
    if (frameCount % 60 == 0 && time2 > 0) { 
        time2 --;
        }
  if (time2 <= 0 && hit == false) { 
   background(207, 16, 32);
    fill(207, 16, 32);
    noStroke();
  } else {
  fill(150,75,0);  
  } 
}
  
  
  
function Respawncircle(){
      noStroke();
     //Respawn circle
      circle(respawnX, respawnY, 100);
      ///Checks if the score ball is inside the respawn circle
      Rhit = collideCircleCircle(scoreX, scoreY, 40, respawnX, respawnY, 100)
        //// if it is inside the circle then give it new cordinates.
        if (Rhit == true) {
            scoreX = random(50, 350);
            scoreY = random(50, 350);
        } 
        if (score1 >= 1) {
          respawnX = 1000;
          respawnY = 1000;
        }
}
  


function ScoreCircle() {
     //Score Circle
      if (hit == true) {
        fill(19, 214, 23);
      } else {
        fill(47, 79, 79);
      }
        noStroke();
        circle(scoreX, scoreY, scoreH, scoreW); 
}
  
  
function Player() {
 //Player circle
      fill(255, 255, 255);
      circle(valueX, valueY, valueW, valueH);
      hit = collideCircleCircle(valueX,valueY,20, scoreX, scoreY, 0) 
}
  
  
function TimerCountdown1(){
     //Timer countdown
  fill(0, 0, 0);
      if (frameCount % 60 == 0 && time > 0) { 
        time --;
        }
      if (time == 0 && hit == false) { //If not hit
        textSize(32);
        text("GAME OVER", 100, 300);
        textSize(24);
        text("Press Space to try again", 60, 330);
        textSize(32);
      ///If you dont move then you lose your move.
        tries -= 1;
       } else if (time == 0 && hit == true) { //If hit 
      ///Restart tries
        tries += 1;
      ///Randomize the placing of the score dot
        scoreX = random(50, 350);
        scoreY = random(50, 350);
     ///Restart Time
         if (score1 >= 25) {
           time = 1;
           time2 = 1;
         } else {
        time = 2
        time2 = 2;
         }
     ///Score adding
        score1 += 1;
        score2 = 'Score: ' + score1;
        
    } 
}
  
  
function ScoreTimer(){
     //Score
      fill(0, 0, 0);
      textSize(24);
      text(score2, 20, 30);
    //Timer
      timer = 'Time left: ' + time;
      text(timer, 250, 30); 
}

function startscreen(){
  //Screen
  fill(240,248,40);
  rect(startX, startY, 400, 400);
  //Text and textbox
  ///TextBox
  stroke(0,0,0);
  fill(0, 255, 25);
  rect(startX+50, startY+80, 300, 70);
  ///Title
  fill(0,0,0);
  textSize(37);
  text('The Floor is Lava', startX+55, startY+125);
  ///How to start 
  textSize(20);
  text('Press Space to begin', startX+100, startY+250);
  if (keyCode === 32) { //if Space is pressed
    startX = 1000;
    startY = 1000;
    }
  }
  
  