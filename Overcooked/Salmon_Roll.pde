class SalmonRoll extends Order{
  
  SalmonRoll(float x, float y){
    super("Salmon Roll", new FoodItem[]{
      new Salmon(0,0),
      new Seaweed(0,0),
      new Rice(0,0)
    }, x, y, 30);
    //cannot refer to an instance field need other solution
  }
  
  void animate(){
  }
  
  void display(){
    fill(220, 220, 220);
    rect(getX(), getY(), 160, 110.0);
    fill(0, 0, 0);
    textSize(20);
    text("Salmon Roll", getX() + 20, getY() + 100);
  }
  
  Matter copy(float X, float Y){
    return new Miso(X, Y);
  }
  
  String toString(){
    return "Salmon Roll: Seaweed, Cooked Rice, Chopped Salmon";
  }
}
