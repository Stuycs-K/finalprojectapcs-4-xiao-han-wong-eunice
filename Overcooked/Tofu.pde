class Tofu extends FoodItem{
  Tofu(float x, float y){
    super("Tofu", 5, 5, 5, x, y);
  }
  
  void display(float x, float y){
    
  }
  
  void display(){
  
  }
  
  boolean trash(){
    return true;
  }
  
  FoodItem copy(float X, float Y){
    return new Tofu(X, Y);
  }
  
}
