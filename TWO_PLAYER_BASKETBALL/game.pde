//==== Game Functions ====
void game() {
  // Background
  image(backgroundImage, 0, -100, 800, 600);
  court();
  ball();
  
  // Update player positions
  updatePlayers();
  
  // Draw players
  image(lebronImage, player1X, player1Y, 200, 200);
  image(twoLebronImage, player2X, player2Y, 200, 200);
  
  // Game UI
  
  
  fill(255);
  textFont(idk);
  textSize(32);
  text(leftScore, width/4, 50);  // Left player's score
  text(rightScore, width*3/4, 50); // Right player's score
}
