void initialize(){
    // Load images
  backgroundImage = loadImage("background.png");
  lebronImage = loadImage("lebron.png");
  twoLebronImage = loadImage("2lebron.png");
  
  numberOfFrames = 31;
  gif = new PImage[numberOfFrames];
  
  for(int i = 0; i<numberOfFrames; i++){
   
    gif[i] = loadImage("pic"+i+".gif");
    
  }
  
  
  //FONT
  idk = createFont("Youre Gone.otf", 100);
  
  //music
  minim = new Minim(this);
  song = minim.loadFile("MUSIC.mp3");
  bounce = minim.loadFile("ballsound.mov");
    score = minim.loadFile("SUCCESS.wav");

}
