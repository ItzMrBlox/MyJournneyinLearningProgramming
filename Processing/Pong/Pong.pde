PVector P0;
PVector R;
float Player1Y = 60; 
float Player2Y = 60;
int Player1S = 0;
int Player2S = 0;
Boolean player1_up = false;
Boolean player1_down = false;
Boolean player2_up = false;
Boolean player2_down = false;
void setup () {
  size(1500, 750);
  P0 = new PVector(750, 375);
  R = new PVector(12, 4);
}
void draw () {
  players();
  P0.add(R);
  background(255, 0, 100);
  fill(255, 255, 255); //Color of players and ball
  ellipse (P0.x, P0.y, 30, 30); //Ball
  rect(1470, Player1Y, 20, 80); //Player1 
  rect(30, Player2Y, 20, 80); //Player2
    
  if(P0.y >= 750) {
    R.y = -1*R.y;
  }
  
    if(P0.y <= 0) {
    R.y = -1*R.y;
  }
  
  if(P0.x < 60 && P0.y > Player2Y && P0.y < Player2Y + 80) { //Player2
    R.x = -1*R.x;
  } 
  
    if(P0.x > 1450 && P0.y > Player1Y && P0.y < Player1Y + 80) { //Player1
    R.x = -1*R.x;
  }   
  Score();
}

void players() { //Controller for the players
    if(player1_up == true){
      Player1Y -= 10;
    }
    if(player1_down == true){
      Player1Y += 10;
    }
     if(player2_up == true){
      Player2Y -= 10;
    }
    if(player2_down == true){
      Player2Y += 10;
    }
  }


void Score() {
  textSize(32);
  fill(0, 102, 153);
  text("Player 1: " + Player1S, 600, 30); 
  text("Player 2: " + Player2S, 800, 30); 
    if(P0.x <= 0){ //If player 2 scores
      Player2S += 1;
        P0 = new PVector(750, 375);
    }
    if(P0.x >= 1500){ //If player 1 scores
      Player1S += 1;
        P0 = new PVector(750, 375);
    }
}

void keyPressed() {
    if (keyCode == UP)
        player1_up = true;
    else if (keyCode == DOWN)
        player1_down = true;
    if (key == 'w' || key == 'W')
        player2_up = true;
    else if (key == 's' || key == 'S')
        player2_down = true;
}

void keyReleased() {
    if (keyCode == UP)
        player1_up = false;
    else if (keyCode == DOWN)
        player1_down = false;
    if (key == 'w' || key == 'W')
        player2_up = false;
    else if (key == 's' || key == 'S')
        player2_down = false;
}
