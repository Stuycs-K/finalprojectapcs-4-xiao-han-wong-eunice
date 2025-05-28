abstract class FoodItem implements Droppable{
  String name;
  int state;
  // 0 = raw, 1 = washed, 2 = cooked, 3 = chopped
  int raw = 0;
  int cooked = 1;
  int burnt = 2;
  int washTime;
  int cookTime;
  int chopTime;
  boolean chopped;
  
  FoodItem(String name){
    this.name = name;
    this.state = 0;
  }
  
  String getName(){
    return name;
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
  
  boolean sink(){
    return true;
  }
  
  boolean belt(){
    return false;
  }
  
  boolean board(){
    return true;
  }
  
  boolean stove(){
    return true;
  };
  
}
    
    
  
