class Dashi extends FoodItem{
  Dashi(float x, float y){
    super("Dashi", 0, 5, 0, x, y);
  }
  
  void display(float x, float y){
    
  }
  
  boolean sink(){
    return false;
  }
  boolean board(){
    return false;
  }
  
  boolean belt(){
    return false;
  }
  
  boolean stove(){
    return true;
  }
  
  boolean trash(){
    return true;
  }
  
  void display(){
    fill(0, 0, 0);
    textSize(20);
    if(this.getState() == 1){
      fill(230, 74, 25);//orange
    }
    text("Dashi", getX() + 35, getY()+50);
  }
  
  FoodItem copy(float X, float Y){
    return new Dashi(X, Y);
  }
  
}
  
  
  
  
