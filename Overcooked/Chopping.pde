class Chopping extends Matter {
  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Chopping(float x, float y){
    super("chopping board", x, y, false);
  }
  
   void colorName(){
    fill(225,0,0);
    text(this.getName(), getX(), getY());
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
      text("chopped " + onBoard.getName(), getX(), getY());
      colorName();
    }
  }
  
  Matter copy(float x, float y){
    return new Chopping(0,0);
  }

  boolean isEmpty(){
    return hasItem.isEmpty();
  }
}
