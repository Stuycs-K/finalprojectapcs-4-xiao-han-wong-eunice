class Salmon extends FoodItem{
  Salmon(float x, float y){
    super("Salmon", 5, 0, 5, x, y);
  }
  
  boolean stove(){
    return false;
  }
}
