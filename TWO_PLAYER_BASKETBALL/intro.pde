//==== State Functions ====
void intro() {
  image(gif[f], 0, 0, width, height);
  if(frameCount % 2 == 0) f = f + 1;
  if(f == numberOfFrames) f = 0;
  
  //TEXT
  float textSize = map(sin(frameCount * 0.05), -1, 1, 30, 60);

  textAlign(CENTER, CENTER); 
  
  float r = map(sin(frameCount * 0.01), -1, 1, 0, 255);
  float g = map(sin(frameCount * 0.02), -1, 1, 0, 255);
  float b = map(sin(frameCount * 0.03), -1, 1, 0, 255);
  
  fill(r, g, b); 
  
  textFont(idk);
  textSize(textSize); 
  text("Basketball Showdown", width/2, 150);
  
  
  
  
  textSize(30);
  text("Click Anywhere to Start", width/2, height-100);
}
