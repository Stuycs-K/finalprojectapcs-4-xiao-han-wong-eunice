class Belt extends Matter{
  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  
  Belt(float x, float y){
    super("Belt", x, y, false);
    
  }
  
  void addItem(Matter item){
    hasItem.add(item);
  }
  
  void rmItem(Matter item){
    hasItem.remove(item);
  }
  
  void animate(){
  }
  
  void display(){
    stroke(0, 0, 0);
    rect(getX(), getY(), 240, 80);
    fill(128,128,128);
  }
}
