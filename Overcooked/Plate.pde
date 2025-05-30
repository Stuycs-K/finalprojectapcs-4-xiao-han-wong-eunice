class Plate extends Matter implements Droppable{
  int clean = 0;
  int dirty = 1;
  int washTime = 5;
  
  int state;
  boolean hasFood;
  FoodItem[] foodItems;
  
  Plate(){
    //x and y vals to be changed
    super("Plate", 0, 0, true);
  }
  
  boolean sink(){
    return true;
  }
  boolean belt(){
    return true;
  }
  boolean board(){
    return false;
  }
  boolean stove(){
    return false;
  }
  
  void changeState(){
    if (state == clean){
      state = dirty;
    }
    else{
      state = clean;
    }
  }
  
  int getWash(){
    return washTime;
  }
}
