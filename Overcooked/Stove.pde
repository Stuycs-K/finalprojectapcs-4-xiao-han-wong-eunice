class Stove extends Matter{
  Stove(float x, float y){
    super("Stove", x, y, false);
    }
  
  void animate(){
  }
  
  void display(){
    fill(0);
    stroke(0, 0, 0);
    square(getX(), getY(), 120);
    
  }
}
