class TunaSashimi extends Order{
  
  TunaSashimi(){
    super("Tuna Sashimi", new FoodItem[]{
      new Tuna(0,0)
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
