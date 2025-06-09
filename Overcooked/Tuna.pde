class Tuna extends FoodItem{
  Tuna(float x, float y ){
    super("Tuna", 5, 0, 5, x, y);
  }
  
  void display(){
    fill(0, 0, 0);
    textSize(20);
    text("Tuna", getX() - 20, getY() + 50);
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
