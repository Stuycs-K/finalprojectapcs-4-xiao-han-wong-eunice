class Rice extends FoodItem{
  Rice(float x, float y){
    super("Rice", 5, 5, 0, x, y);
  }
  
  /*
  void display(float x, float y){
    
  }
  */
  
  boolean sink(){
   return false; 
  }
  boolean belt(){
    return false;
  }
  boolean board(){
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
    if(this.isWashed() && this.getState() == 1){
      fill(62, 39, 35);//brown
    }
    else if(this.isWashed()){
      fill(77, 208, 225);//teal
    }
    else if(this.getState() == 1){
      fill(230, 74, 25);//orange
    }
    text("Rice", getX() + 20, getY() + 50);
  }
  
  FoodItem copy(float X, float Y){
    return new Rice(X, Y);
  }
}
