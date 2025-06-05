class Salmon extends FoodItem{
  Salmon(float x, float y){
    super("Salmon", 5, 5, 5, x, y);
  }
  
  void display(){
    
  }
  
  boolean sink(){
   return false; 
  }
  boolean belt(){
    return false;
  }
  boolean board(){
    return true;
  }
  boolean stove(){
    return true;
  }
  
  boolean trash(){
    return true;
  }
  
  FoodItem copy(float X, float Y){
    return new Salmon(X, Y);
  }
}
