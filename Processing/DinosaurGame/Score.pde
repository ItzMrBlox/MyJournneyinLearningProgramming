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
