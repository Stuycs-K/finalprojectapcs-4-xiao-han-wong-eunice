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
  
  void display(){
    fill(200, 200, 200);
    rect(getX()-60, getY()-60, 120, 120);
    fill(200, 200, 200);
    fill(0, 0, 0);
    textSize(20);
    text("Belt", getX()-20, getY() + 20);
  }
  
  Matter copy(float x, float y){
    return new Belt(0,0);
  }
}
