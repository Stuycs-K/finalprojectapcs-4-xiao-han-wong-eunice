class Miso extends FoodItem{
  Miso(float X, float Y){
      super("Miso", 5, 5, 5, X, Y);
  }
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
  
  }
  
  FoodItem copy(float X, float Y){
    return new Miso(X, Y);
  }
}
