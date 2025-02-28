void imageinit(){
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
}
