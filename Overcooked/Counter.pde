class Counter extends Matter{

  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Counter(float x, float y){
    super("Counter", x, y, false);
  }
  
  void addItem(Matter item){
    hasItem.add(item);
  }
  
  Matter rmItem(){
    if (!hasItem.isEmpty()) {
      return hasItem.remove(0);
    }
    return null;
  }
  
  void display(){
    fill(233, 166, 88);
    stroke(0, 0, 0);
    square(getX(), getY(), 120);
    fill(233, 166, 88);
    if (!hasItem.isEmpty()) {
      Matter onCounter = hasItem.get(0); 
      text(onCounter.getName(), getX() , getY()); 
    }
  }
  
  boolean isEmpty(){
    return hasItem.isEmpty();
  }
  
  Matter copy(float x, float y){
    return new Counter(0,0);
  }
  
}
