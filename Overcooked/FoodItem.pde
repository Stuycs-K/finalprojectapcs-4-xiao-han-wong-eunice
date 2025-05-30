abstract class FoodItem extends Matter implements Droppable{
  String name;
  int raw = 0;
  int cooked = 1;
  int burnt = 2;
  int state, washTime, cookTime, chopTime;
  boolean chopped, washed;
  
  FoodItem(String name, int wash, int cook, int chop, float x, float y){
    super(name, x, y, true);
    this.name = name;
    this.state = 0;
    washTime = wash;
    cookTime = cook;
    chopTime = chop;
    washed = false;
    chopped = false;
  }
  
  String getName(){
    return name;
  }
  
  void changeState(String str){
    if (str.equals("cooked")){
      state = cooked;
    }
    else if (str.equals("burnt")){
      state = burnt;
    }
    else{
      state = raw;
    }
  }
  
  void setWash(){
    washed = !washed;
  }
  
  void setChop(){
    chopped = true;
  }
  
  int getWash(){
     return this.washTime;
  }
  
  int getCook(){
    return this.cookTime;
  }
  
  int getChop(){
    return this.chopTime;
  }
  
  boolean isChopped(){
    return this.chopped;
  }
  
  void display(float x, float y){
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
    
    
  
