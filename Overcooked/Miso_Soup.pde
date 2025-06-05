class MisoSoup extends Order{
  
  MisoSoup(float x, float y){
    super("Miso Soup", new FoodItem[]{
      new Seaweed(0,0),
      new Dashi(0,0),
      new Tofu(0,0)
    }, x, y, 40);
    //cannot refer to an instance field need other solution
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
    return false;
  }
  
  boolean trash(){
    return true;
  }
  
  void display(){
    fill(220, 220, 220);
    rect(getX(), getY(), 160, 110.0);
    fill(0, 0, 0);
    textSize(20);
    text("Miso Soup", 35, 100);
  }
  
  
}
