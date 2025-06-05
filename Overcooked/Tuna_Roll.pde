class TunaRoll extends Order{
  
  TunaRoll(){
    super("Tuna Roll", new FoodItem[]{
      new Tuna(0,0),
      new Seaweed(0,0),
      new Rice(0,0)
    }, 0, 0, 30);
    //cannot refer to an instance field need other solution
  }
   
   /*
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
    return false;
  }
  */
  
  void animate(){
  }
  
  void display(){
    fill(220, 220, 220);
    rect(getX(), getY(), 160, 110.0);
    fill(0, 0, 0);
    textSize(20);
    text("TUNA ROLL", getX() + 30, getY() + 100);
  }
}
