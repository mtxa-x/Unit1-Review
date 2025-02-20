//==== TWO_PLAYER_BASKETBALL.pde ====
// Mode Constants
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//==== Setup Function ====
void setup() {
  size(800, 600);
  smooth();
  frameRate(60);
  textAlign(CENTER, CENTER);
}

//==== Draw Function ====
void draw() {
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
  
  // Title
  fill(255);
  textSize(50);
  text("Basketball Showdown", width/2, 150);
  
  // Start Prompt
  textSize(30);
  text("Click Anywhere to Start", width/2, height-100);
  

}

void game() {
  background(0);
  court();
  
  // Game elements
  fill(255);
  textSize(20);
  text("Gameplay Area - Active Game", width/2, 50);
}

void gameover() {
  background(0);
  
  // Result Display
  fill(255);
  textSize(50);
  text("Game Over!", width/2, 150);
  
  // Score Summary
  textSize(30);
  text("Final Score: 00 - 00", width/2, 250);
  
  // Restart Prompt
  text("Click Anywhere to Rematch", width/2, height-100);
  
 
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
