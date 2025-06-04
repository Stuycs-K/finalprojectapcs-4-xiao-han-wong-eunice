class MisoSoup extends Order{
  
  MisoSoup(){
    super("Miso Soup", new FoodItem[]{
      new Seaweed(0,0),
      new Dashi(0,0),
      new Tofu(0,0)
    }, 0, 0, 40);
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
    return true;
  }
  
  void animate(){
  }
}
