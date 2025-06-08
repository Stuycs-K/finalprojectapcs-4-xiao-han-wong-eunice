class Chopping extends Matter {
  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Chopping(float x, float y){
    super("chopping board", x, y, false);
  }
  
  void addItem(Matter item){
    hasItem.add(item);
  }
  
  void rmItem(Matter item){
    hasItem.remove(item);
  }
  
  void display(){
    fill(234, 182, 118);
    stroke(0, 0, 0);
    rect(getX(), getY(), 120, 70);
    fill(234, 182, 118);
  }
  
  Matter copy(float x, float y){
    return new Chopping(0,0);
  }
}
