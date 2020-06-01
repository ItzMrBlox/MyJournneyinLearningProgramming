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
  dino = new Dino();
  obstacles = new Obstacles(lineY);
  score = new Score(ScoreAmount);
}

void draw() {
  background(255);
  drawGround();
  obstacles.draw();
  obstacles.move();
  dino.draw();
  score.draw();
  obstacles.offScreen();
  DebugMenu();
  dino.DinoDebug();
  obstacles.obstaclesDebug();
}

void keyPressed(){
  if(key == ' ' || keyCode == UP){
    dino.jump();
  }
  if(keyCode == DOWN){
    dino.fall();
  }
}

void DebugMenu(){
    fill(0);
    textSize(19);
    text("Debug Menu", 1300, 15); 
}

void stop(){
   noLoop(); 
}
