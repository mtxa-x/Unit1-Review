//==== TWO_PLAYER_BASKETBALL.pde ====


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song, bounce,score;


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

//GIF
PImage[] gif;
int numberOfFrames;
int f;

//FONT
PFont idk;

//==== Setup Function ====
void setup() {
  size(800, 600);
  
  smooth();
  frameRate(60);
  textAlign(CENTER, CENTER);
  
  initialize();
  
  // Initial player positions
  player1X = 600;
  player1Y = 488;
  player2X = 100;
  player2Y = 488;
  
  ballx = width/2;
  bally = height/2;
  balld = 40;
  
  //initalize speed ball
  vx = 10;
  vy = 10;
  
  song.setGain(-10);
  song.play();
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
