class Dino {
  float baseY, px, py, vy, ay, speed, h;
  boolean canJump, isJumping;
  Dino(float lineY) {
    baseY = lineY;
    px = 100;
    py = baseY;
    vy = 0;
    ay = 0;
    h = 100;
    canJump = true;
    isJumping = false;
  }

void draw() {
    vy+=ay;
    py+=vy;
    landed_check();
    fill(60,60,60);
    rect(80, py-h, 50, h);
}
 void jump(){
    if( canJump ){
      canJump = false;
      isJumping = true;
      vy = -11;
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
  void fall(){
   if (isJumping ){
     vy = +10;
     ay = 0.32;
   }
  }
 void DinoDebug(){{    fill(0);
    textSize(19);
    text("canJump?: " + canJump, 1300, 60); 
    text("isJumping?: " + isJumping, 1300, 80);
   }
  }
}
