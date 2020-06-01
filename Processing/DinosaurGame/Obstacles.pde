class Obstacles {
  float lineY, oy, ospeed, speed, oh, ow;
  int ox;
  boolean Collide;
  Obstacles(float lineY) {
     ox = width+50;
     oy = lineY;
     ospeed = 0;
     speed = 7;
     oh = random(50, 90);
     ow = 40;
     Collide = false;
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

//Return to screen
  void offScreen(){
  if(-50 > ox){
    ox = width+50;
    oh = random(50, 90);
    score.increaseScore();
  }
}

 void CollideWithPlayer(){
   
 }

 void obstaclesDebug(){
    fill(0);
    textSize(19);
    text("Speed: " + speed, 1300, 40); 
    text("Collide?: " + Collide, 1300, 160);
  }
}
