class TunaSashimi extends Order{
  
  TunaSashimi(float x, float y){
    super("Tuna Sashimi", new FoodItem[]{
      new Tuna(0,0)
    }, x, y, 15);
    //cannot refer to an instance field need other solution
  }
   
  boolean sink(){
    return false;
  }
  boolean belt(){
    return false;
  }
  boolean board(){
    return true;
  }
  boolean stove(){
    return false;
  }
  
  void animate(){
  }
  
  void display(){
    fill(220, 220, 220);
    rect(getX(), getY(), 160, 110.0);
    fill(0, 0, 0);
    textSize(20);
    text("Tuna Sashimi", getX() + 20, getY() + 100);
  }
}
