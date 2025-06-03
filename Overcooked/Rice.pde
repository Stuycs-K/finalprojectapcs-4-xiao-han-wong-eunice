class Rice extends FoodItem{
  Rice(float x, float y){
    super("Rice", 5, 5, 0, x, y);
  }
  
  void display(float x, float y){
    
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
}
