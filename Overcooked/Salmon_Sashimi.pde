class SalmonSashimi extends Order{
  
  SalmonSashimi(){
    super("Salmon Sashimi", new FoodItem[]{
      new Salmon(0,0)
    }, 0, 0, 15);
    //cannot refer to an instance field need other solution
  }
  
  void animate(){
  }
}
