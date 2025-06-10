abstract class Matter{
  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  private String name;
  private float x;
  private float y;
  private boolean moveable;
  private boolean animating;
  
  Matter(String name, float x, float y, boolean move){
    this.name = name;
    this.x = x;
    this.y = y;
    moveable = move;
  }
  
  String getName(){
    return name;
  }
  
  void setName(String newName){
    name = newName;
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  boolean getMove(){
    return moveable;
  }
  
  boolean getAnimating(){
    return animating;
  }
  
  void setanimation(){
    animating = !animating;
  }
  
  void setX(float X){
    x += X;
  }
  
  void setY(float Y){
    y +=Y;
  }
  
  void modX(float X){
    x = X;
  }
  
  void modY(float Y){
    y = Y;
  }
  
  String toString(){
    return this.getName();
  }
  
  Matter getItem(){
    return this;
  }
  
  
  void addItem(Matter item){
    hasItem.add(item);
  }
  
  abstract void display();
  abstract Matter copy(float X, float Y);
  
}
