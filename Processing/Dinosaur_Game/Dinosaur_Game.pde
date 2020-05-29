class Dino {
  float baseY, px, py, vy, ay, speed;
  boolean canJump, isJumping;
  Dino(float lineY) {
    baseY = lineY;
    px = 100;
    py = baseY;
    vy = 0;
    ay = 0;
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
  float lineY, oy, ospeed, speed, oh;
  int ox;
  Obstacles(float lineY) {
     ox = width+50;
     oy = lineY;
     ospeed = 0;
     speed = 7;
     oh = random(50, 90);
  }
  void draw() {
    fill(25,25,25);
    rect(ox, oy-oh, 40, oh);
    fill(0);
    textSize(19);
    text("Speed: " + speed, 20, 40);
  }
  void move(){
   ox -= speed; 
  }
  void increaseSpeed() { //Increase the speed once offscreen
    speed += 0.1;
  }
  void offScreen(){
  if(0 > ox){
    ox = width+50;
    oh = random(50, 90);
    score.increaseScore();
  }}
  void collidePlayer(){
    
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
  void increaseScore(){
    obstacles.increaseSpeed();
    ScoreAmount += 1;
  }
}

float lineY;
int ScoreAmount = 0;
Dino dino;
Obstacles obstacles;
Score score;

void drawGround() {
  stroke(0);
  fill(0);
  rect(0, lineY, width, 250);
}

void setup() {
  size(1500, 700);
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
  obstacles.offScreen();
}

void keyPressed(){
  if(key == ' '){
    dino.jump();
  }
  if(keyCode == UP){
    dino.jump();
  }
}
