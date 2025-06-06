class Tuna extends FoodItem{
  Tuna(float x, float y ){
    super("Tuna", 5, 0, 5, x, y);
  }
  
  void display(){
    rect(getX(), getY(), 160, 110.0);
  }
  
  boolean stove(){
    return false;
  }
  
  boolean trash(){
    return true;
  }
  
  FoodItem copy(float X, float Y){
    return new Tuna(X, Y);
  }
  
}
