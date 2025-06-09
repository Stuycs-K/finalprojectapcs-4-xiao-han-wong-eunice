class Counter extends Matter{

  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Counter(float x, float y){
    super("Counter", x, y, false);
  }
  
  void addItem(Matter item){
    hasItem.add(item);
    item.modX(this.getX());
    println("modified X of "+item);
    item.modY(this.getY());
    println("modified Y of "+item);
    item.display();
  }
  
  
  void rmItem(){
    if (hasItem()) {
       hasItem.remove(0);
    }
  }
  
  void display(){
    fill(233, 166, 88);
    stroke(0, 0, 0);
    square(getX() - 60, getY()-60, 120);
    fill(233, 166, 88);
  }
  
  boolean isEmpty(){
    if (hasItem.size() > 0){
      return false;
    }
    return true;
  }
  
  Matter copy(float x, float y){
    return new Counter(0,0);
  }
  
  boolean hasItem(){
    if (hasItem.size() > 0){
      println("has item");
      return true;
    }
    println("no item");
    return false;
  }
  
  Matter getItem(){
    if (hasItem()){
      return hasItem.get(0);
    }
    return null;
  }
  
}
