class Seaweed extends FoodItem{
  Seaweed(float x, float y){
    super("Seaweed", 5, 5, 0, x, y);
  }
  
  void display(){
    fill(0, 0, 0);
    textSize(20);
    text("Seaweed", getX() - 40, getY() + 50);
  }
    
  boolean chop(){
    return false;
  }
  
  boolean trash(){
    return true;
  }
  
  FoodItem copy(float X, float Y){
    return new Seaweed(X, Y);
  }
}
