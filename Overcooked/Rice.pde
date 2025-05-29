class Rice extends FoodItem{
  Rice(float x, float y){
    super("Rice", 5, 5, 0, x, y);
  }
  
  boolean board(){
    return false;
  }
}
