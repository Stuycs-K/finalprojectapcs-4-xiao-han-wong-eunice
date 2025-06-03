class MatterManage{
  ArrayList<Matter> allMatter = new ArrayList<Matter>();

  void add(Matter m) {
    allMatter.add(m);
  }

  Matter getMatterAt(float x, float y) {
    for (Matter m : allMatter) {
      if (m.getX() == x && m.getY() == y){
        return m;
     }
    }
   return null;
 }
 
  ArrayList<Matter> getAll() {
    return allMatter;
  }
}
