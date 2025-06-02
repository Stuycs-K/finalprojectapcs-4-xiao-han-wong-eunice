class Stove extends Matter{
  Stove(float x, float y, FoodItem item){
    super("Stove", x, y, false);
    if(item.getCook() > 0){
      item.changeState("cooked");
    }
  }
  
  void animate(){
  }
}
