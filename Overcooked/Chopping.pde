class Chopping extends Matter {
  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Chopping(float x, float y){
    super("chopping board", x, y, false);
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
    fill(234, 182, 118);
    stroke(0, 0, 0);
    rect(getX(), getY(), 120, 70);
    fill(234, 182, 118);
    if(!hasItem.isEmpty()){
      Matter onBoard = hasItem.get(0);
      text("Chopping " + onBoard.getName(), getX(), getY());
    }
  }
  
  Matter copy(float x, float y){
    return new Chopping(0,0);
  }

  boolean isEmpty(){
    return hasItem.isEmpty();
  }
}
