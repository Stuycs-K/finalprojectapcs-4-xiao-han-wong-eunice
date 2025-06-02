class Chopping extends Matter{
  Chopping(float x, float y, FoodItem item){
    super("chopping board", x, y, false);
    if (item.getChop() > 0){
      item.setChop();
    }
  }
  
  void animate(){
  }
}
