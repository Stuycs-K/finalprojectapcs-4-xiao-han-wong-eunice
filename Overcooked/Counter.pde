class Counter extends Matter{

  ArrayList<Matter> hasItem = new ArrayList<Matter>();
  Counter(float x, float y){
    super("Counter", x, y, false);
  }
  
  void addItem(Matter item){
    hasItem.add(item);
  }
  
  void rmItem(Matter item){
    hasItem.remove(item);
  }
  
<<<<<<< HEAD
  void display(){
    stroke(0, 0, 0);
    square(getX(), getY(), 120);
    fill(234, 182, 118);
=======
  
  void display(){
    stroke(0, 0, 0);
    square(getX(), getY(), 120);
>>>>>>> a1a35b4d48138cefe563a12ac72fc428ac5d8154
  }
}
