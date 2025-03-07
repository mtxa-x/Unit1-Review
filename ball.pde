float ballx, bally, balld; //ball
float vx, vy;
void ball(){
  // Existing ball code...
  fill(255);
  noStroke();
  circle(ballx, bally, balld); // Ball

  ballx = ballx + vx;
  bally = bally + vy;
  
  // BOUNCING ! =========================================
  if (bally < balld/2 || bally > 504-balld/2) {
    vy = vy * -1;
  }
  
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }
  
  // NEW CODE: Check ball collision with player rectangles
  // Player 1 rectangle collision
  if (ballx + balld/2 > player1X+67 && ballx - balld/2 < player1X+67+60 &&
      bally + balld/2 > player1Y+24 && bally - balld/2 < player1Y+24+150) {
    // Ball is colliding with player 1's rectangle
    
    // Determine which side of the rectangle was hit
    float overlapRight = (ballx - balld/2) - (player1X+67+60);
    float overlapLeft = (player1X+67) - (ballx + balld/2);
    float overlapTop = (player1Y+24) - (bally + balld/2);
    float overlapBottom = (bally - balld/2) - (player1Y+24+150);
    
    // Find the smallest overlap (which tells us which side was hit)
    float minOverlap = min(abs(overlapRight), min(abs(overlapLeft), min(abs(overlapTop), abs(overlapBottom))));
    
    // Bounce based on which side was hit
    if (abs(overlapLeft) == minOverlap || abs(overlapRight) == minOverlap) {
      vx = vx * -1; // Reverse horizontal direction
    } else {
      vy = vy * -1; // Reverse vertical direction
    }
  }
  
  // Player 2 rectangle collision (same logic)
  if (ballx + balld/2 > player2X+70 && ballx - balld/2 < player2X+70+60 &&
      bally + balld/2 > player2Y+24 && bally - balld/2 < player2Y+24+150) {
    // Ball is colliding with player 2's rectangle
    
    // Determine which side of the rectangle was hit
    float overlapRight = (ballx - balld/2) - (player2X+70+60);
    float overlapLeft = (player2X+70) - (ballx + balld/2);
    float overlapTop = (player2Y+24) - (bally + balld/2);
    float overlapBottom = (bally - balld/2) - (player2Y+24+150);
    
    // Find the smallest overlap
    float minOverlap = min(abs(overlapRight), min(abs(overlapLeft), min(abs(overlapTop), abs(overlapBottom))));
    
    // Bounce based on which side was hit
    if (abs(overlapLeft) == minOverlap || abs(overlapRight) == minOverlap) {
      vx = vx * -1; // Reverse horizontal direction
    } else {
      vy = vy * -1; // Reverse vertical direction
    }
  }

  // Keep ball within screen bounds
  if (bally > height - balld/2) {
    bally = height - balld/2;
  }
  if (bally < balld/2) {
    bally = balld/2;
  }
  
  // POLE COLLISION DETECTION
  // Left side poles
  // Vertical pole left
  if (ballx + balld/2 > 22 && ballx - balld/2 < 22 + 10 &&
      bally + balld/2 > 160 && bally - balld/2 < 160 + 330) {
    vx = vx * -1;
  }
  
  // Horizontal pole top left
  if (ballx + balld/2 > 22 && ballx - balld/2 < 22 + 73 &&
      bally + balld/2 > 180 && bally - balld/2 < 180 + 10) {
    vy = vy * -1;
  }
  
  // Horizontal pole middle left
  if (ballx + balld/2 > 22 && ballx - balld/2 < 22 + 73 &&
      bally + balld/2 > 235 && bally - balld/2 < 235 + 10) {
    vy = vy * -1;
  }
  
  // Vertical pole basket left
  if (ballx + balld/2 > 95 && ballx - balld/2 < 95 + 10 &&
      bally + balld/2 > 150 && bally - balld/2 < 150 + 125) {
    vx = vx * -1;
  }
  
  // Hoop left
  if (ballx + balld/2 > 95 && ballx - balld/2 < 95 + 60 &&
      bally + balld/2 > 235 && bally - balld/2 < 235 + 10) {
    vy = vy * -1;
  }
  
  // Right side poles
  // Vertical pole right
  if (ballx + balld/2 > width-32 && ballx - balld/2 < width-32 + 10 &&
      bally + balld/2 > 160 && bally - balld/2 < 160 + 330) {
    vx = vx * -1;
  }
  
  // Horizontal pole top right
  if (ballx + balld/2 > width-95 && ballx - balld/2 < width-95 + 73 &&
      bally + balld/2 > 180 && bally - balld/2 < 180 + 10) {
    vy = vy * -1;
  }
  
  // Horizontal pole middle right
  if (ballx + balld/2 > width-95 && ballx - balld/2 < width-95 + 73 &&
      bally + balld/2 > 235 && bally - balld/2 < 235 + 10) {
    vy = vy * -1;
  }
  
  // Vertical pole basket right
  if (ballx + balld/2 > width-105 && ballx - balld/2 < width-105 + 10 &&
      bally + balld/2 > 150 && bally - balld/2 < 150 + 125) {
    vx = vx * -1;
  }
  
  // Hoop right
  if (ballx + balld/2 > width-155 && ballx - balld/2 < width-155 + 60 &&
      bally + balld/2 > 235 && bally - balld/2 < 235 + 10) {
    vy = vy * -1;
  }

  // Keep ball within screen bounds
  if (bally > height - balld/2) {
    bally = height - balld/2;
  }
  if (bally < balld/2) {
    bally = balld/2;
  }
}
