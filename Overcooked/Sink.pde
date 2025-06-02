class Sink extends Matter{
  Sink(float x, float y, Matter item){
    super("Sink", x, y, false);
    if (item.getWash() > 0){
      item.setWash();
    }
  }
  
  void animate(){
  }
}
