class Dino {
  float baseY, px, py, vy, ay, speed;
  boolean canJump, isJumping;
  Dino(float lineY) {
    baseY = lineY;
    px = 100;
    py = baseY;
    vy = 0;
    ay = 0;
    speed = 0.001;
    canJump = true;
    isJumping = false;
  }

void draw() {
    vy+=ay;
    py+=vy;
    landed_check();
    fill(0,0,0);
    rect(80, py-100, 50, 100);
}
 void jump(){
    if( canJump ){
      canJump = false;
      isJumping = true;
      vy = -10;
      ay = 0.32;
      print("Player Jumped ");
    }
  }
  void landed_check(){
    if( py >= baseY ){
      py = baseY;
      vy = 0;
      ay = 0;
      isJumping = false;
      canJump = true;
    }
  }
}

class Obstacles {
  float lineY, ox, oy, ospeed, oh;
  Obstacles(float lineY) {
     ox = width;
     oy = lineY;
     ospeed = 0;
     oh = random(50, 90);
  }
  void draw() {
    fill(25,25,25);
    rect(ox-ospeed, oy-oh, 40, oh);
  }
  void move(){
   ospeed += 1; 
  }
}

class Score {
  int ScoreAmount;
  Score(int ScoreAmount){
    ScoreAmount = 0;
  }
  void draw(){
    fill(0);
    textSize(19);
    text("Score: " + ScoreAmount, 20, 20);
  }
}

float lineY;
int ScoreAmount;
Dino dino;
Obstacles obstacles;
Score score;

void drawGround() {
  stroke(0);
  fill(0);
  rect(0, lineY, width, 120);
}

void setup() {
  size(1000, 700);
  lineY = 480;
  dino = new Dino(lineY);
  obstacles = new Obstacles(lineY);
  score = new Score(ScoreAmount);
}

void draw() {
  background(255);
  drawGround();
  dino.draw();
  obstacles.draw();
  obstacles.move();
  score.draw();
}

void keyPressed(){
  if(key == ' '){
    dino.jump();
  }
}
