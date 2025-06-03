class Counter extends Matter{

  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Counter(float x, float y){
    super("Counter", x, y, false);
  }
  
  void addItem(Matter item){
    hasItem.add(item);
  }
  
  void rmItem(Matter item){
    hasItem.remove(item);
  }
  
  
  void display(){
    stroke(0, 0, 0);
    square(getX(), getY(), 120);
  }
}
