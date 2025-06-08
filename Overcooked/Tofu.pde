class Tofu extends FoodItem{
  Tofu(float x, float y){
    super("Tofu", 5, 5, 5, x, y);
  }
  
  void display(float x, float y){
    
  }
  
  void display(){
    fill(0, 0, 0);
    textSize(20);
    text("Tofu", getX() + 20, getY() + 50);
  }
  
  boolean trash(){
    return true;
  }
  
  FoodItem copy(float X, float Y){
    return new Tofu(X, Y);
  }
  
}
