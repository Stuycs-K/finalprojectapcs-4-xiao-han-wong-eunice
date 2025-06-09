class Miso extends FoodItem{
  Miso(float X, float Y){
      super("Miso", 5, 5, 5, X, Y);
  }
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
    if(this.isChopped() && this.isWashed() && this.getState() == 1){
      fill(74, 20, 140);//purple
    }
    else if(this.isChopped() && this.isWashed()){
      fill(13, 71, 161);//blue
    }
    else if(this.isChopped() && this.getState() == 1){
      fill(27, 94, 32);//green
    }
    else if(this.isWashed() && this.getState() == 1){
      fill(62, 39, 35);//brown
    }
    else if(this.isWashed()){
      fill(77, 208, 225);//teal
    }
    else if(this.chopped){
      fill(236, 64, 122);//red
    }
    else if(this.getState() == 1){
      fill(230, 74, 25);//orange
    }
    text("Miso", getX() + 35, getY()+50);
  }
  
  FoodItem copy(float X, float Y){
    return new Miso(X, Y);
  }
}
