class Plate{
  int clean = 0;
  int dirty = 1;
  int washTime = 5;
  
  int state;
  boolean hasFood;
  FoodItem[] foodItems;
  
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
