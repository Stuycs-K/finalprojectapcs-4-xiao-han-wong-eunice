class Rice extends FoodItem{
  Rice(float x, float y){
    super("Rice", 5, 5, 0, x, y);
  }
  
  /*
  void display(float x, float y){
    
  }
  */
  
  boolean sink(){
   return false; 
  }
  boolean belt(){
    return false;
  }
  boolean board(){
    return false;
  }
  boolean stove(){
    return true;
  }
  
  boolean trash(){
    return true;
  }
  
  void display(){
    fill(0, 0, 0);
    textSize(20);
    text("Rice", getX() + 20, getY() + 50);
  }
  
  FoodItem copy(float X, float Y){
    return new Rice(X, Y);
  }
}
