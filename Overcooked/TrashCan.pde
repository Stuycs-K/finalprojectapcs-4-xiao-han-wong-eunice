class TrashCan extends Matter implements Animatable{
  TrashCan(float x, float y){
    super("Trash Can", x, y, false);
  }
  
  void start(){
  }
  
  void animate(){
  }
  
  void display(){
    fill(0, 0, 0);
    textSize(20);
    text("Trash", getX() + 20, getY() + 50);
  }
  
  Matter copy(float X, float Y){
    return new TrashCan(X, Y);
  }
}
