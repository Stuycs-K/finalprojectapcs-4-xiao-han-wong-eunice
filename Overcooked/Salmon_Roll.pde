class SalmonRoll extends Order{
  
  SalmonRoll(){
    super("Salmon Roll", new FoodItem[]{
      new Salmon(0,0),
      new Seaweed(0,0),
      new Rice(0,0)
    }, 0, 0);
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
}
