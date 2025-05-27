abstract class Matter{
  abstract String name;
  abstract float xCoord;
  abstract float yCoord;
  abstract boolean moveable;
  
  String getName(){
    return name;
  }
  
  float getX(){
    return xCoord;
  }
  
  float getY(){
    return yCoord;
  }
