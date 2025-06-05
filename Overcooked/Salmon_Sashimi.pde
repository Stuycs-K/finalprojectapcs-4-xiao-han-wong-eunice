class SalmonSashimi extends Order{
  
  SalmonSashimi(float x, float y){
    super("Salmon Sashimi", new FoodItem[]{
      new Salmon(0,0)
    }, x, y, 15);
  }
  
  void animate(){
  }
  
  void display(){
    fill(220, 220, 220);
    rect(getX(), getY(), 160, 110.0);
    fill(0, 0, 0);
    textSize(20);
    text("Salmon Sashimi", getX() + 8, getY() + 100);
  }
}
