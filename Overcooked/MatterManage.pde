class MatterManage{
  ArrayList<Matter> allMatter = new ArrayList<Matter>();

  void add(Matter m) {
    allMatter.add(m);
  }

  Matter getMatterAt(float x, float y) {
    for (Matter m : allMatter) {
      //println("Checking Matter: " + m + " at (" + m.getX() + ", " + m.getY() + ")");
      if (m.getX() == x && m.getY() == y) {
        //println("Found Matter: " + m);
        return m;
      }
    }
   //println("no matter at: " + x + ", "+y);
   return null;
 }
 
 Matter getMovableMatter(float x, float y){
   for (Matter m : allMatter) {
      //println("Checking Matter: " + m + " at (" + m.getX() + ", " + m.getY() + ")");
      //println(m);
      //println(m.getMove());
        if (m.getX() == x && m.getY() == y && !m.toString().equals("Player")){
          return m;
        }
      
    }
   println("no moveable matter at: " + x + ", "+y);
   return null;
 }
 
 Matter getNonMovableMatter(float x, float y){
   for (Matter m : allMatter) {
      if (!m.getMove()){
        println("found nonmoveable matter: "+m);
        if (m.getX() == x && m.getY() == y){
          println("nonmoveable matter holds: "+m.getItem());
          return m.getItem();
        }
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
