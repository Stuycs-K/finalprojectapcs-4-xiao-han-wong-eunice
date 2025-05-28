abstract class FoodItem extends Droppable{
  String name;
  int raw = 0;
  int cooked = 1;
  int burnt = 2;
  int state;
  // 0 = raw, 1 = washed, 2 = cooked, 3 = chopped
  abstract int washTime;
  abstract int cookTime;
  abstract int chopTime;
  abstract boolean chopped;
  
  FoodItem(String name){
    this.name = name;
    this.state = 0;
  }
  
  abstract void changeState(){
  }
  
  int getWash(){
     return this.washtime;
  }
  
  int getCook(){
    return this.cookTime;
  }
  
  int chopTime(){
    return this.chopTime;
  }
  
  boolean isChopped(){
    return this.chopped;
  }
  
  abstract void display(float x, float y){
  }
    
    
  
