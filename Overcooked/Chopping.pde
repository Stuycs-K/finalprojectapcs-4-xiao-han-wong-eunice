class Chopping extends Matter implements Droppable{
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
    return false;
  }
  Chopping(float x, float y, FoodItem item){
    super("chopping board", x, y, false);
    if (item.getChop() > 0){
      item.setChop();
    }
  }
}
