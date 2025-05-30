
void setup(){
  size(1920, 1080);
  background(0, 76, 153);
  for (int x = 60; x <= 1920; x+=60){
    line (x, 0, x, 1080);
    //square();
  }
  for (int y = 60; y <= 1080; y+=60){
    line(0, y, 1920, y);
  }
  
  fill(0, 76, 153);
  //circle(x, y)
}

void draw(){
  
}

void keyPressed(){
}
 
