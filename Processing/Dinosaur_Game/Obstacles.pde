class Obstacles {
  float lineY, oy, ospeed, speed, oh, ow;
  int ox;
  Obstacles(float lineY) {
     ox = width+50;
     oy = lineY;
     ospeed = 0;
     speed = 7;
     oh = random(50, 90);
     ow = 40;
  }
  void draw() {
    fill(25,25,25);
    rect(ox, oy-oh, ow, oh);
  }
  void move(){
   ox -= speed; 
  }
  void increaseSpeed() { //Increase the speed once offscreen
    speed += 0.1;
  }
  void offScreen(){
  if(-50 > ox){
    ox = width+50;
    oh = random(50, 90);
    score.increaseScore();
  }}
 void obstaclesDebug(){
    fill(0);
    textSize(19);
    text("Speed: " + speed, 1300, 40); 
  }
}
