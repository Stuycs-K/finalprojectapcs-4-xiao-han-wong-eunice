class Dashi extends FoodItem{
  Dashi(float x, float y){
    super("Dashi", 0, 5, 0, x, y);
  }
  
  void display(float x, float y){
    
  }
  
  boolean sink(){
    return false;
  }
  boolean board(){
    return false;
  }
  
  boolean belt(){
    return false;
  }
  
  boolean stove(){
    return true;
  }
  
}
  
  
  
  
