abstract class Matter{
  private String name;
  private float x;
  private float y;
  private boolean moveable;
  
  Matter(String name, float x, float y, boolean move){
    this.name = name;
    this.x = x;
    this.y = y;
    moveable = move;
  }
  
  String getName(){
    return name;
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
  
  void setX(float X){
    x += X;
  }
  
  void setY(float Y){
    y +=Y;
  }
  
  String toString(){
    return this.getName();
  }
  
  abstract void display();
  
}
