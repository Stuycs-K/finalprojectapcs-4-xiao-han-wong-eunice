class Sink extends Matter implements Animatable{
  
  
  Sink(float x, float y){
    super("Sink", x, y, false);
  }
  
  void start(){
  }
  
  void animate(){
  }
  
  void display(){
    fill(0, 0, 0);
    textSize(20);
    text("sink", getX() + 20, getY() + 50);
  }
  
  Matter copy(float X, float Y){
    return new Sink(X, Y);
  }
}
