import java.util.ArrayList;

int round = 1;
int difficulty = 0;
int secPassed, minLapse, maxLapse, oneStar, twoStar, threeStar;
ArrayList<Order> orders = new ArrayList<Order>();
ArrayList<Matter> appliances = new ArrayList<Matter>();
MatterManage manager = new MatterManage();
ArrayList<Order> menu;

//Objects
Stove stove;
Player A;
//Counter[] counters = new Counter[9];
ArrayList<Counter> counters = new ArrayList<Counter>();

Counter counter1, counter2, counter3, counter0;
Chopping board0, board1;
Belt belt1, belt2;
TrashCan trash;
Stove stove1, stove2, stove3;
Inventory Plates, SalmonFish, tunaFish, Tofu, Dashi, Seaweed, Miso, Rice;

//one round lasts 60 seconds

//OBJECTS
//Stove stove = new Stove(360, 360);


/*
if (difficulty == 0){
  //change min and max lapse between orders
}
if (difficulty == 1){}
if (difficulty == 2){}
*/

void setEasy(){
  secPassed = 0;
  difficulty = 0;
  minLapse = 10;
  maxLapse = 16;
  oneStar = 50;
  twoStar = 75;
  threeStar = 100;
  
  menu = new ArrayList<Order>();
  menu.add(new SalmonSashimi(0, 0));
  menu.add(new SalmonSashimi(0, 0));
  menu.add(new SalmonRoll(0, 0));
  menu.add(new TunaSashimi(0, 0));
  menu.add(new TunaSashimi(0, 0));
  menu.add(new TunaRoll(0, 0));
}

void setMed(){
  secPassed = 0;
  difficulty = 1;
  minLapse = 9;
  maxLapse = 14;
  oneStar = 105;
  twoStar = 130;
  threeStar = 160;
  
  menu = new ArrayList<Order>();
  menu.add(new SalmonRoll(0, 0));
  menu.add(new SalmonSashimi(0, 0));
  menu.add(new SalmonRoll(0, 0));
  menu.add(new TunaRoll(0, 0));
  menu.add(new TunaSashimi(0, 0));
  menu.add(new TunaRoll(0, 0));
  menu.add(new MisoSoup(0, 0));
}

void setHard(){
  secPassed = 0;
  difficulty = 2;
  minLapse = 6;
  maxLapse = 11;
  oneStar = 130;
  twoStar = 145;
  threeStar = 200;
  
  menu = new ArrayList<Order>();
  menu.add(new SalmonSashimi(0, 0));
  menu.add(new SalmonRoll(0, 0));
  menu.add(new TunaRoll(0, 0));
  menu.add(new TunaSashimi(0, 0));
  menu.add(new TunaRoll(0, 0));
  menu.add(new MisoSoup(0, 0));
  menu.add(new MisoSoup(0, 0));
  menu.add(new MisoSoup(0, 0));
}

void newRound(){
  orders = new ArrayList<Order>();
  difficulty++;
  round++;
  secPassed = 0;
  
  menu = new ArrayList<Order>();
}

void victoryScreen(){
  quad(400, 150, 1520, 100, 1480, 370, 450, 400);
  stroke(0,0, 0);
  quad(450, 400, 1480, 370, 1500, 700, 425, 700);
  quad(1500, 700, 425, 700, 450, 900, 1475, 900);
  
}

void keyPressed() {
  if (key == 'w' || key == 'W'){
    A.move("w",manager);
  }
  if (key == 'a' || key == 'A'){
    A.move("a",manager);
  }
  if (key == 'S' || key == 's'){
    A.move("s",manager);
  }
  if (key == 'd' || key == 'D'){
    A.move("d",manager);
  }
  if (key == 'r' || key == 'R'){
    A.move("r",manager);
  }
  
}
void setup(){
  size(1920, 1080);
  background(0, 76, 153);
  //OBJECTS
  
  //stove = new Stove(240, 240);
  //manager.add(stove);
  //println("Added stove. List now size: " + manager.allMatter.size());
  A = new Player("Bob", 900.0, 420.0);
  manager.add(A);
  for(int x = 0; x < 4; x++){
    counters.add(new Counter(x * 120 + 360, 840));
    manager.add(counters.get(counters.size() - 1));
  }
  //println("All Matter size: " + manager.allMatter.size());
  manager.debugPrintAllMatter();
  
  counter0 = new Counter(480, 120);
  counter1 = new Counter(360, 120);
  board0 = new Chopping(600, 120);
  board1 = new Chopping (720, 120);
  counter2 = new Counter(840, 120);
  counter3 = new Counter(960, 120);
  belt1 = new Belt(1200, 120);
  belt2 = new Belt(1320, 120);
  trash = new TrashCan(1440, 120);
  
  /*
  //Plates, SalmonFish, tunaFish, Tofu, Dashi, Seaweed, Miso, Rice;
  Plate plate1 = new Plate(0,0);
  Plates = Inventory(plate1, 10, 1080.0, 120.0);
  SalmonFish = Inventory(new Salmon(0,0), 10, 1080.0, 120.0);
  */
  
  manager.add(counter0);
  manager.add(counter1);
  manager.add(counter2);
  manager.add(counter3);
  manager.add(board0);
  manager.add(board1);
  manager.add(belt1);
  manager.add(belt2);
  manager.add(trash);
  
  setEasy();
  
  
}

void draw(){
  
  for(int x = 120, bin = 0; x <= width - 240; x+=120){
    for(int y = 120; y <= height - 200; y+=120){
       fill(123, 82, 54);
      if((x == 120 && y == 120) || (x == width - 240 && y == 120)){
        y+= 240;
      }
      if((x == 240 && y == 120) || (x == width - 360 && y == 120)){
        y+=120;
      }
      if (!(x==240 && y == height - 240) && !(x==width - 360 && y == height - 240)){
        square(x, y, 120);
      }
      
      if((x==120 && y == height - 480) || (x== width - 240 && y == height - 480)){
        y +=240;
      }
    }
  }
  
    
  fill(0, 76, 153);
  
  A.display();
  counter0.display();
  counter1.display();
  board0.display();
  board1.display();
  counter2.display();
  counter3.display();
  belt1.display();
  belt2.display();
  trash.display();
  
  /*  Testing for orders
  rect(0, 0.0, 160, 110.0);
  fill(220, 220, 220);
  rect(160, 0.0, 160, 110.0);
  fill(0, 76, 153);
  fill(0, 0, 0);
  textSize(20);
  text("Miso Soup", 35, 100);
  text("TUNA ROLL", 180, 100);
  */
  


  for(Counter c : counters){
    c.display();
  }
  
  //stove.display();
  //victoryScreen();
}

 
