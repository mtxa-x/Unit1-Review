//==== TWO_PLAYER_BASKETBALL.pde ====
// Mode Constants
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
int mode = INTRO;

// Images
PImage backgroundImage, lebronImage, twoLebronImage;

// Player variables
float player1X, player1Y;  // Lebron (arrow keys)
float player2X, player2Y;  // 2Lebron (WASD)
float speed = 5;

// Key handling
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
boolean wPressed = false;
boolean sPressed = false;
boolean aPressed = false;
boolean dPressed = false;

//==== Setup Function ====
void setup() {
  size(800, 600);
  smooth();
  frameRate(60);
  textAlign(CENTER, CENTER);
  
  // Load images
  backgroundImage = loadImage("background.png");
  lebronImage = loadImage("lebron.png");
  twoLebronImage = loadImage("2lebron.png");
  
  // Initial player positions
  player1X = 600;
  player1Y = 488;
  player2X = 100;
  player2Y = 488;
  
  //300, 488
}

//==== Draw Function ====
void draw() {
  println(mouseX, mouseY);
  
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }
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

//==== Game Functions ====
void game() {
  // Background
  image(backgroundImage, 0, -100, 800, 600);
  court();
  
  // Update player positions
  updatePlayers();
  
  // Draw players
  image(lebronImage, player1X, player1Y, 200, 200);
  image(twoLebronImage, player2X, player2Y, 200, 200);
  
  // Game UI
  fill(255);
  textSize(20);
  text("Gameplay Area - Active Game", width/2, 50);
}

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
}



//==== Mouse Handling ====
void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}

//==== State Functions ====
void intro() {
  background(0);
  fill(255);
  textSize(50);
  text("Basketball Showdown", width/2, 150);
  textSize(30);
  text("Click Anywhere to Start", width/2, height-100);
}

void gameover() {
  background(0);
  fill(255);
  textSize(50);
  text("Game Over!", width/2, 150);
  textSize(30);
  text("Final Score: 00 - 00", width/2, 250);
  text("Click Anywhere to Rematch", width/2, height-100);
}

//==== Court Drawing Function ====
color Ccourt = #4D4F4E;
color courtline = #969696;
color hoop = #F04F3A;
color pole = #C3C2C6;

void court(){
  
  //ground
  fill(Ccourt);
  stroke(0);
  strokeWeight(2);
  rect(0, 400, width, height);
 
 
  //lines
  
  stroke(courtline);
  strokeWeight(7);
  line(15, 580, 85, 430);
  line(85, 430, width-85, 430);
  line(width-85, 430, width-15, 580);
  line(width-15, 580, 15, 580);
  
  line(66, 475,  162, 475);
  line(40, 532, 136, 532);
  line(162, 477, 137, 532);
  
  
  
  line(width-66, 475, width-162, 475);
  line(width-40, 532, width-136, 532);
  line(width-162, 477, width-137, 532);
  
  
  
  //pole left 
  fill(hoop);
  noStroke();
  rect(95, 235, 60, 10);
  rect(width-155, 235, 60, 10);
  
  fill(pole);
  
  rect(22, 160, 10, 330);
  
  rect(22, 180, 73, 10);
  rect(22, 235, 73, 10);
  
  rect(95, 150, 10, 125);
 
 
 //pole right
 
rect(width-32, 160, 10, 330);    
rect(width-95, 180, 73, 10);   
rect(width-95, 235, 73, 10);     
rect(width-105, 150, 10, 125);   
  
  
}

//==== Click Handlers ====
void introClicks() {
  mode = GAME;
}

void gameClicks() {
 
}

void gameoverClicks() {
  mode = GAME;
}

//==== Placeholder Functions ====
void pause() {
  background(0);
  fill(255);
  textSize(50);
  text("Game Paused", width/2, height/2);
}

void pauseClicks() {
  mode = GAME;
}
