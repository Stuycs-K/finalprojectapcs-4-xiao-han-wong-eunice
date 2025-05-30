class SalmonSashimi extends Order{
  
  SalmonSashimi(){
    //super("Salmon Sashimi", ingred, 0, 0);
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
    return true;
  }
  
  void animate(){
  }
}
