class Chopping extends Matter {
  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Chopping(float x, float y){
    super("chopping board", x, y, false);
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
    hasItem.remove(0);
  }
  
  void display(){
    fill(234, 182, 118);
    stroke(0, 0, 0);
    rect(getX()-60, getY()-60, 120, 70);
    fill(234, 182, 118);
  }
  
  Matter copy(float x, float y){
    return new Chopping(0,0);
  }
  
  Matter getItem(){
    return hasItem.get(0);
  }
  
  boolean hasItem(){
    if (hasItem.size() > 0){
      return true;
    }
    return false;
  }
}
