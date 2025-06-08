class Stove extends Matter{
  float startTime = -1;
  Stove(float x, float y){
    super("Stove", x, y, false);
    }
  
  void start(){
    startTime = millis();
    this.setanimation();
  }
    
  void animate(){
    float elapsedTime = millis() - startTime;
    noStroke();
    fill(100, 150, 255);
      if(elapsedTime < 1000){
        circle(getX() + 30, getY() - 20, 60);
      }
      if(elapsedTime < 2000){
        circle(getX() + 100, getY() - 50, 40);
      }else if(elapsedTime < 3000){
        circle(getX() + 40, getY() - 40, 30);
      }else if(elapsedTime < 4000){
        circle(getX() + 70, getY() - 70, 30);
      }else if(elapsedTime < 5000){
        circle(getX() + 60, getY() - 100, 20);
      }else{
        this.setanimation();
    }
  }
  
  void display(){
    fill(255,0,0);
    stroke(0, 0, 0);
    square(getX(), getY(), 120);
    fill(189, 148, 104);
    rotate(radians(-25));
    rect(245, 550, 50, 10);
    rotate(radians(385));
    fill(98, 98, 126);
    circle(int(getX() + 60), int(getY() + 60), 100);
  }
  
  Matter copy(float X, float Y){
    return new Stove(X, Y);
  }
}
