class Tuna extends FoodItem{
  Tuna(float x, float y ){
    super("Tuna", 5, 0, 5, x, y);
  }
  
  void display(){
    fill(0, 0, 0);
    textSize(20);
    if(this.isChopped() && this.isWashed()){
      fill(13, 71, 161);//blue
    }
    else if(this.isWashed()){
      fill(77, 208, 225);//teal
    }
    else if(this.chopped){
      fill(236, 64, 122);//red
    }
    text("Tuna", getX() + 20, getY() + 50);
  }
  
  boolean stove(){
    return false;
  }
  
  boolean trash(){
    return true;
  }
  
  FoodItem copy(float X, float Y){
    return new Tuna(X, Y);
  }
  
}
