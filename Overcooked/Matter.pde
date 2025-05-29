abstract class Matter{
  private String name;
  private float xCoord;
  private float yCoord;
  private boolean moveable;
  
  Matter(String name, float x, float y, boolean move){
    this.name = name;
    xCoord = x;
    yCoord = y;
    moveable = move;
  }
  
  String getName(){
    return name;
  }
  
  float getX(){
    return xCoord;
  }
  
  float getY(){
    return yCoord;
  }
  
  String toString(){
    return this.getName();
  }
  
}
