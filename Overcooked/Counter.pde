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
    fill(233, 166, 88);
    stroke(0, 0, 0);
    square(getX(), getY(), 120);
    fill(233, 166, 88);
  }
  
  Matter copy(float x, float y){
    return new Counter(0,0);
  }
  
}
