class Plate extends Matter implements Droppable{
  int clean = 0;
  int dirty = 1;
  int washTime = 5;
  
  int state;
  boolean hasFood;
  ArrayList<FoodItem> foodItems = new ArrayList<FoodItem>();
  
  Plate(float x, float y){
    //x and y vals to be changed
    super("Plate", x, y, true);
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
  
  void addItem(FoodItem item){
    foodItems.add(item);
  }
  
  void display(){
    stroke(0, 0, 0);
    circle(getX(), getY(), 100);
    circle(getX(), getY(), 100);
    fill(255, 255, 255);
  }
  
}
