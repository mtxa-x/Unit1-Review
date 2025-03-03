void gameover() {
    image(gif[f], 0, 0, width, height);
  if(frameCount % 2 == 0) f = f + 1;
  if(f == numberOfFrames) f = 0;
  
  float r = map(sin(frameCount * 0.01), -1, 1, 0, 255);
  float g = map(sin(frameCount * 0.02), -1, 1, 0, 255);
  float b = map(sin(frameCount * 0.03), -1, 1, 0, 255);
  
  textFont(idk);
  fill(r, g, b); 
  
  textSize(50);
  text("Game Over!", width/2, 150);

  textFont(idk);
  textSize(50);
  text("Final Score: " + leftScore + " : " + rightScore, width/2, 250);
  textSize(30);
  fill(255);
  text("Click Anywhere to Rematch", width/2, height-100);
}
