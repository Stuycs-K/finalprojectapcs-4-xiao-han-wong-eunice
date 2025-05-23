class FoodItem{
  String name;
  int state;
  int washTime = 5;
  int cookTime = 5;
  int chopTime = 5;
  
  FoodItem(String name){
    this.name = name;
    this.state = 0;
  }
  
  String getName(){
    return this.name;
  }
  
  void changeState(){
    
  
