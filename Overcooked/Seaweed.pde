class Seaweed extends FoodItem{
  Seaweed(float x, float y){
    super("Seaweed", 5, 5, 0, x, y);
  }
  
  void display(){
  
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
