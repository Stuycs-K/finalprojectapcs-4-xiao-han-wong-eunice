import java.util.ArrayList;

int round = 1;
int difficulty = 0;
int secPassed, minLapse, maxLapse, oneStar, twoStar, threeStar;
ArrayList<Order> orders = new ArrayList<Order>();
ArrayList<Matter> appliances = new ArrayList<Matter>();
MatterManage manager = new MatterManage();
ArrayList<Order> menu;

//Objects
PShape star1;
PShape star2;
PShape star3;
//Stove stove;
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
  background(130,184,220);
  noStroke();
  fill(78,189,208);
  rect(0, 40, 1000, 120);
  fill(61,113,150);
  rect(0,160, 1000, 10);
  //score sheet
  stroke(250);
  fill(239,231,217);
  quad(400, 150, 1520, 100, 1480, 400, 450, 400);
  fill(255,255,250);
  quad(450, 400, 1480, 400, 1500, 700, 425, 700);
  fill(239,231,217);
  quad(1500, 700, 425, 700, 450, 900, 1475, 900);
  
  //onion man
  noStroke();
  fill(65, 53, 41);
  quad(150, 700, 210, 700, 85, 800, 80, 780);//legs
  quad(85, 800, 100, 780, 145, 875, 130, 875);
  quad(265, 700, 290, 690, 295, 810, 275, 810);
  quad(275, 810, 295, 810, 270, 885, 260, 885);
  fill(84, 23, 22);
  quad(130,875,145,875, 150, 890, 125, 890);//shoes
  quad(260, 885, 270, 885, 300, 915, 250, 915);
  fill(135, 91, 54);
  quad(360, 630, 410, 620, 415, 635, 360, 650);//arm
  quad(70, 660, 45, 710, 50, 735, 80, 675);
  quad(50, 735, 10, 660, 25, 660, 55, 705);
  fill(132, 65, 23);
  ellipse(400, 612, 35, 20);
  ellipse(20, 650, 32,20);
  fill(142,81,36);
  ellipse(210, 590, 340, 300);
  
  //staff
  fill(128,128,128);
  rotate(radians(15));
  rect(530, 380, 20, 400);
  rect(520, 370, 40, 10);
  fill(205,144,19);
  beginShape();
  vertex(523,375);
  bezierVertex(525,375, 500, 355, 535, 330);
  vertex(532, 315);
  vertex(542, 320);
  vertex(552, 315);
  vertex(550, 328);
  bezierVertex(560, 340, 578, 355, 557, 375);
  endShape(CLOSE);
  rotate(radians(345));
  
  //crown
  fill(205,144,19);
  beginShape();
  vertex(50, 540);
  bezierVertex(100, 490, 180, 450, 263, 449);
  vertex(250, 420);
  bezierVertex(165, 420, 85, 460, 40, 510);
  endShape(CLOSE);
  triangle(50, 540, 25, 460, 100, 480);
  triangle(60, 490, 80, 410, 140, 450);
  triangle(110, 480, 145, 380, 200, 430);
  triangle(170, 450, 230, 380, 250, 420);
  
  //mustache
  fill(87,34,3);
  beginShape();
  vertex(250,540);
  bezierVertex(200, 530, 180, 590, 120, 580);
  bezierVertex(150, 620, 220, 630, 255, 580);
  endShape(CLOSE);
  beginShape();
  vertex(250, 540);
  bezierVertex(300, 520, 320, 570, 370, 545);
  bezierVertex(340, 610, 300, 610, 250, 580);
  endShape(CLOSE);
  
  //face
  fill(87,34,3);
  rotate(radians(-15));
  rect(-10, 530, 80, 20);//left eyebrow
  fill(122,56,30);
  ellipse(100, 590, 40, 60);//nose
  fill(0);
  ellipse(30, 570, 30, 10);//left eye
  rotate(radians(375));
  rotate(radians(10));
  ellipse(400, 470, 30, 10);//right eye
  fill(87,34,3);
  rect(360, 430, 80, 20);//right eyebrow
  rotate(radians(350));
  
  
  
  
  //3 stars
  star1 = createShape();
  star1.beginShape();
  star1.stroke(128,128,128);
  star1.fill(128,128,128);
  star1.vertex(700, 170);
  star1.vertex(730, 230);
  star1.vertex(790, 235);
  star1.vertex(740, 280);
  star1.vertex(760, 340);
  star1.vertex(700, 310);
  star1.vertex(640, 340);
  star1.vertex(660, 280);
  star1.vertex(610, 235);
  star1.vertex(670,230);
  star1.endShape(CLOSE);
  star2 = createShape();
  star2.beginShape();
  star2.stroke(128,128,128);
  star2.fill(128,128,128);
  star2.vertex(960, 140);
  star2.vertex(1000, 210);
  star2.vertex(1070, 215);
  star2.vertex(1010, 270);
  star2.vertex(1040,350);
  star2.vertex(960, 315);
  star2.vertex(890, 350);
  star2.vertex(920, 270);
  star2.vertex(860, 215);
  star2.vertex(930, 210);
  star2.endShape(CLOSE);
  star3 = createShape();
  star3.beginShape();
  star3.stroke(128,128,128);
  star3.fill(128,128,128);
  star3.vertex(1220, 170);
  star3.vertex(1250, 230);
  star3.vertex(1310, 235);
  star3.vertex(1260, 280);
  star3.vertex(1280, 340);
  star3.vertex(1220, 310);
  star3.vertex(1160, 340);
  star3.vertex(1180, 280);
  star3.vertex(1130, 235);
  star3.vertex(1190, 230);
  star3.endShape(CLOSE);
  shape(star3);
  shape(star2);
  shape(star1);
  
  //text
  textSize(50);
  fill(128,128,128);
  text("380", 665, 380);
  text("640", 925, 380);
  text("480", 1185, 380);
  textSize(75);
  text("Orders Delivered x 10", 500, 500);
  text("Orders Failed x 0", 500, 625);
  text("TOTAL:", 500, 825);
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
  A.facingRay();
  
  //displays holding item
  if (A.handsFull()){
    A.getItem().modX(A.getX());
    A.getItem().modY(A.getY());
  }
  
  //quad(100, 100, 200, 100, 100, 300, 10, 300);
  
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

 
