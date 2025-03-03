void updatePlayers() {
  // Player 1 (Arrow keys)
  if (upPressed) player1Y -= speed;
  if (downPressed) player1Y += speed;
  if (leftPressed) player1X -= speed;
  if (rightPressed) player1X += speed;
  
  // Player 2 (WASD)
  if (wPressed) player2Y -= speed;
  if (sPressed) player2Y += speed;
  if (aPressed) player2X -= speed;
  if (dPressed) player2X += speed;
  
  // Constrain to court boundaries
  player1X = constrain(player1X, 0, width-130);
  player1Y = constrain(player1Y, 325, 325);
  player2X = constrain(player2X, 0, width-130);
  player2Y = constrain(player2Y, 325, 325);
  
  //Rectangle on Player for Bouncing
  fill(255, 0, 0, 0);
  rect(player1X+67, player1Y+24, 60, 150);
  rect(player2X+70, player2Y+24, 60, 150);
  fill(255);
}

//==== Input Handling ====
void keyPressed() {
  if (keyCode == UP) upPressed = true;
  if (keyCode == DOWN) downPressed = true;
  if (keyCode == LEFT) leftPressed = true;
  if (keyCode == RIGHT) rightPressed = true;
  
  if (key == 'w' || key == 'W') wPressed = true;
  if (key == 's' || key == 'S') sPressed = true;
  if (key == 'a' || key == 'A') aPressed = true;
  if (key == 'd' || key == 'D') dPressed = true;
}

void keyReleased() {
  if (keyCode == UP) upPressed = false;
  if (keyCode == DOWN) downPressed = false;
  if (keyCode == LEFT) leftPressed = false;
  if (keyCode == RIGHT) rightPressed = false;
  
  if (key == 'w' || key == 'W') wPressed = false;
  if (key == 's' || key == 'S') sPressed = false;
  if (key == 'a' || key == 'A') aPressed = false;
  if (key == 'd' || key == 'D') dPressed = false;
}
