class Stove extends Matter{
  Stove(float x, float y){
    super("Stove", x, y, false);
    }
  
  void animate(){
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
