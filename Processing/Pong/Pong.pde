PVector P0;
PVector R;
float Player1Y = 60; 
float Player2Y = 60;
float Player1S = 0;
float Player2S = 0;
void setup () {
  size(1500, 750);
  P0 = new PVector(100, 50);
  R = new PVector(12, 4);
}
void draw () {
  players();
  P0.add(R);
  background(255, 0, 100);
  ellipse (P0.x, P0.y, 30, 30);
  rect(1470, Player1Y, 20, 80); //Player1 
  rect(30, Player2Y, 20, 80); //Player2
    
  if(P0.y >= 750) {
    R.y = -1*R.y;
  }
  
    if(P0.y <= 0) {
    R.y = -1*R.y;
  }
  
  if(P0.x < 60 && P0.y > Player2Y && P0.y < Player2Y + 80) { //Player1
    R.x = -1*R.x;
  } 
  
    if(P0.x > 1450 && P0.y > Player1Y && P0.y < Player1Y + 80) { //Player2
    R.x = -1*R.x;
  }   
  score();
}

void players() { //Controller for the players
  if(keyPressed){
    if(keyCode == UP){
      Player1Y -= 10;
    }
    if(keyCode == DOWN){
      Player1Y += 10;
    }
     if(key == 'w' || key == 'W'){
      Player2Y -= 10;
    }
    if(key == 's' || key == 'S'){
      Player2Y += 10;
    }
  }
}


void score() {
    if(P0.x <= 0){
      
    }
    if(P0.x >= 1500){
      
    }
}
