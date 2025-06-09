class Seaweed extends FoodItem{
  Seaweed(float x, float y){
    super("Seaweed", 5, 5, 0, x, y);
  }
  
  void display(){
    fill(0, 0, 0);
    textSize(20);
    if(this.isWashed() && this.getState() == 1){
      fill(62, 39, 35);//brown
    }
    else if(this.isWashed()){
      fill(77, 208, 225);//teal
    }
    else if(this.getState() == 1){
      fill(230, 74, 25);//orange
    }
    text("Seaweed", getX() + 20, getY() + 50);
  }
    
  boolean chop(){
    return false;
  }
  
  boolean trash(){
    return true;
  }
  
  FoodItem copy(float X, float Y){
    return new Seaweed(X, Y);
  }
}
