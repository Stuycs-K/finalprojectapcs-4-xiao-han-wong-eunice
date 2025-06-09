class Sink extends Matter implements Animatable{
  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Sink(float x, float y){
    super("Sink", x, y, false);
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
  
  boolean isEmpty(){
    return hasItem.isEmpty();
  }
  
}
