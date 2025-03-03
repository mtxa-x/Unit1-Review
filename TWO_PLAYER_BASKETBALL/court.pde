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
