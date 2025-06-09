class Tofu extends FoodItem{
  Tofu(float x, float y){
    super("Tofu", 5, 5, 5, x, y);
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
    text("Tofu", getX() + 20, getY() + 50);
  }
  
  boolean trash(){
    return true;
  }
  
  boolean cook(){
    return true;
  }
  
  FoodItem copy(float X, float Y){
    return new Tofu(X, Y);
  }
  
}
