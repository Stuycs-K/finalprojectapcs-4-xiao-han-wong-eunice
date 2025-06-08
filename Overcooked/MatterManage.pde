class MatterManage{
  ArrayList<Matter> allMatter = new ArrayList<Matter>();

  void add(Matter m) {
    allMatter.add(m);
  }

  Matter getMatterAt(float x, float y) {
    for (Matter m : allMatter) {
      //println("Checking Matter: " + m + " at (" + m.getX() + ", " + m.getY() + ")");
      if (m.getX() - x == -60 && m.getY() - y == -60) {
        //println("Found Matter: " + m);
        return m;
      }
    }
   return null;
 }
 
 Matter getMovableMatter(float x, float y){
   for (Matter m : allMatter) {
      //println("Checking Matter: " + m + " at (" + m.getX() + ", " + m.getY() + ")");
      println(m);
      println(m.getMove());
      if ((m.getX() == x && m.getY() == y && m.getMove())) {
        //println("Found Matter: " + m);
        return m;
      }
      else if((m.toString().equals("Inventory"))){
        return m.getItem();
      }
    }
   return null;
 }
 
 void debugPrintAllMatter() {
   //println("Matter list contents:");
     for (Matter m : allMatter) {
      //println(m);
     }
  }
  /*ArrayList<Matter> getAll() {
    return allMatter;
  }*/
}
