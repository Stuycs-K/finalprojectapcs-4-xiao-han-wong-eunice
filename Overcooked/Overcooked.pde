import java.util.ArrayList;

int round = 1;
int difficulty = 0;
int currentScore = 0;
int startTime = -1;
boolean timerRunning = false;
int totalTime = 60000;
int secPassed, secLeft, minLapse, maxLapse, ordersDelivered, ordersFailed;
String oneStar, twoStar, threeStar;
ArrayList<Order> orders = new ArrayList<Order>();
ArrayList<Matter> appliances = new ArrayList<Matter>();
MatterManage manager = new MatterManage();
ArrayList<Order> menu;
ArrayList<Float> locations = new ArrayList<Float>();
ArrayList<Matter> objects = new ArrayList<Matter>();

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
Stove stove, stove1, stove2, stove3;
Inventory Plates, SalmonFish, TunaFish, Tofu, Dashi, Seaweed, Seaweed2, Miso, Rice;
Sink sink1, sink2;

//one round lasts 60 seconds


void setEasy(){
  ordersDelivered = 0;
  ordersFailed = 0;
  secPassed = 0;
  difficulty = 0;
  minLapse = 10;
  maxLapse = 16;
  oneStar = "50";
  twoStar = "75";
  threeStar = "100";
  
  
  menu = new ArrayList<Order>();
  menu.add(new SalmonSashimi(0, 0));
  menu.add(new SalmonSashimi(0, 0));
  menu.add(new SalmonRoll(0, 0));
  menu.add(new TunaSashimi(0, 0));
  menu.add(new TunaSashimi(0, 0));
  menu.add(new TunaRoll(0, 0));
}

void setMed(){
  ordersDelivered = 0;
  ordersFailed = 0;
  secPassed = 0;
  difficulty = 1;
  minLapse = 9;
  maxLapse = 14;
  oneStar = "105";
  twoStar = "130";
  threeStar = "160";
  
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
  ordersDelivered = 0;
  ordersFailed = 0;
  secPassed = 0;
  difficulty = 2;
  minLapse = 6;
  maxLapse = 11;
  oneStar = "130";
  twoStar = "145";
  threeStar = "200";
  
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

int getStarsEarned(){
  int score = currentScore;
  int oneStarInt = Integer.parseInt(oneStar);
  int twoStarInt = Integer.parseInt(twoStar);
  int threeStarInt = Integer.parseInt(threeStar);
  if(score >= threeStarInt){
    return 3;
  }
  else if(score >= twoStarInt){
    return 2;
  }
  else if(score >= oneStarInt){
    return 1;
  }else{
    return 0;
  }
}


void victoryScreen(){
  background(130,184,220);
  noStroke();
  fill(164, 206, 230);
  rect(0, 915, 1920, 165);
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
  
  int starsEarned = getStarsEarned();
  if(starsEarned >= 1){
    star1.setFill(color(225,215,0));
  }

  if (starsEarned >= 2) {
    star2.setFill(color(255, 215, 0));
  }

  if (starsEarned >= 3) {
    star3.setFill(color(255, 215, 0));
  } 

  shape(star3);
  shape(star2);
  shape(star1);

    
  //text
  textSize(50);
  fill(128,128,128);
  text(oneStar, 665, 380);
  text(twoStar, 925, 380);
  text(threeStar, 1185, 380);
  textSize(75);
  text("Orders Delivered x " + ordersDelivered, 500, 500);
  text("Orders Failed x 0", 500, 625);
  text("TOTAL:", 500, 825);
  fill(225, 225, 225);
  textSize(100);
  text("PLAYER 1", 40, 130);
  
  //dog
  //left ear
  beginShape();
  fill(159, 115, 70);
  vertex(1610, 660);
  bezierVertex(1520, 630, 1560, 690, 1580, 700);
  endShape(CLOSE);
  fill(96,60,36);
  beginShape();//face
  vertex(1610, 660);
  bezierVertex(1710, 640, 1750, 720, 1740, 760);
  vertex(1740, 790);
  bezierVertex(1680, 820, 1620, 820, 1595, 790);
  vertex(1580, 785);
  bezierVertex(1550, 770, 1560, 700, 1580, 680);
  endShape(CLOSE);
  //legs
  quad(1800, 890, 1790, 915, 1760, 915, 1760, 890);
  fill(63, 31, 18);
  quad(1720, 870, 1740, 890, 1730, 915, 1710, 915);
  fill(96,60,36);
  quad(1680, 870, 1720, 890, 1710, 915, 1670, 915);
  quad(1630, 720, 1650, 720, 1660, 915, 1620, 915);
  //body
  fill(96,60,36);
  beginShape();
  vertex(1740, 790);
  bezierVertex(1800, 820, 1820, 850, 1800, 890);
  bezierVertex(1680, 890, 1625, 890, 1610, 810);
  endShape(CLOSE);
  //collar
  fill(85, 116, 171);
  beginShape();
  vertex(1610,803);
  bezierVertex(1595,790, 1620, 830, 1740, 790);
  bezierVertex(1740,820, 1620, 830, 1600, 810);
  vertex(1605, 800);
  endShape(CLOSE);
  //right ears
  fill(159, 115, 70);
  beginShape();
  vertex(1640,678);
  bezierVertex(1660, 630, 1740, 685, 1700, 700);
  endShape(CLOSE);
  //eyebrows
  fill(74, 54, 30);
  rotate(radians(15));
  rect(1685, 290, 40, 20);
  rotate(radians(345));
  rotate(radians(-15));
  rect(1380, 1120, 50, 20);
  rotate(radians(375));
  circle(1660, 730, 30);
  circle(1570, 740, 20);
  //nose
  quad(1580, 730, 1630, 730, 1625, 755, 1585, 755);
  //smile
  arc(1600, 770, 30, 10, 0, PI);
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
  if (key == 'e' || key == 'E'){
    Matter matterInFront = manager.getMatterAt(A.faceX(), A.faceY());
    println("matter in front is " + matterInFront);
    if(matterInFront.getName().equals("Belt") && A.handsFull()){
      Matter heldFood = A.getItem();
      ArrayList<FoodItem> preparedList = new ArrayList<FoodItem>();
      if (heldFood instanceof FoodItem) {
        preparedList.add((FoodItem) heldFood);
      }
      for (int i = 0; i < orders.size(); i++) {
        Order order = orders.get(i);
        if (order.isComplete(preparedList)) {
            orders.remove(i);
            ordersDelivered++;
            currentScore += order.getScoreValue();
            break;
        }
      }
    }
    if(matterInFront.getName().equals("chopping board")){
      if(matterInFront instanceof Chopping){
        Chopping board = (Chopping) matterInFront;
        Matter heldFood = A.getItem();
        if(A.handsFull() && board.isEmpty()) {
            board.addItem(heldFood);
            A.drop(heldFood);
            A.chop((FoodItem)heldFood);
            /*println("Hands full? " + A.handsFull());
            println("HeldFood is chopped? " + ((FoodItem)heldFood).isChopped());
            println("HeldFood can be chopped on board? " + ((FoodItem)heldFood).board());
            println("Board is empty? " + board.isEmpty());
            */
        }
        else if(!A.handsFull() && !board.isEmpty()){
          //println("HeldFood is chopped? " + ((FoodItem)heldFood).isChopped());
          Matter removedItem = board.rmItem();
          if (removedItem instanceof FoodItem) {
            A.pickUp((FoodItem) removedItem);
            println("HeldFood is chopped? " + ((FoodItem)removedItem).isChopped());
          }
        }
      }
    }
    
    if(matterInFront.getName().equals("Counter")){
      if (matterInFront instanceof Counter) {
        Counter counter = (Counter) matterInFront;
        Matter heldFood = A.getItem();
      if (A.handsFull() && counter.isEmpty()) {
        /*if(counter.isEmpty()){
          println(heldFood + " has been placed");
        }*/
        counter.addItem(heldFood);
        A.drop(heldFood);
        /*counter.display();
        if(!A.handsFull()){
          println("player has dropped food");
        }*/
      }else if (!A.handsFull() && !counter.isEmpty()) {
        //println("About to remove item from counter...");
        Matter removedItem = counter.rmItem();
        counter.rmItem();
        //println("Removed: " + removedItem);
          A.pickUp((FoodItem) removedItem);
          /*println("A now holding: " + A.getItem());
          println("Counter is empty? " + counter.isEmpty());
          println("A hands full? " + A.handsFull());*/
          //counter.display();
          /*if(counter.isEmpty() && A.handsFull()){
          println(removedItem + " has been picked up");
          }*/
      }
    }
  }
    if(matterInFront.getName().equals("Trash Can") && A.handsFull()){
      Matter heldFood = A.getItem();
      A.drop(heldFood);
    }
    if(matterInFront.getName().equals("Stove") && A.handsFull()){
      Matter heldFood = A.getItem();
      if (heldFood != null && heldFood instanceof FoodItem) {
        FoodItem food = (FoodItem) heldFood;
        if (food.getState() == 0 && food.stove()) {
          if (matterInFront instanceof Animatable) {
            ((Animatable) matterInFront).start();
          }
        }
      }
    }
    if(matterInFront.getName().equals("Inventory") && !A.handsFull()){
      Inventory inv = (Inventory) matterInFront;
      if (inv.inventory.size() > 0) {          // avoid removing from empty inventory
        Matter food = inv.remove();
        if (food instanceof FoodItem) {
            A.pickUp(food);
        }
      }
    } 
  }
        
  
}

void progressBar(){

}

void timerDisplay(){
  fill(0, 0, 0);
  rect(1710, 950, 170, 70);
  
}

void setup(){
  size(1920, 1080);
  startTime = millis();
  timerRunning = true;
  background(0, 76, 153);

  A = new Player("Bob", 900.0, 420.0);
  manager.add(A);
  for(int x = 0; x < 4; x++){
    counters.add(new Counter(x * 120 + 360, 840));
    manager.add(counters.get(counters.size() - 1));
  }
  manager.debugPrintAllMatter();
  
  //stove = new Stove(360, 360);
  stove1 = new Stove(840, 840);
  stove2 = new Stove(960, 840);
  stove3 = new Stove(1080, 840);
  
  counter0 = new Counter(480, 120);
  counter1 = new Counter(360, 120);
  board0 = new Chopping(600, 120);
  board1 = new Chopping (720, 120);
  counter2 = new Counter(840, 120);
  counter3 = new Counter(960, 120);
  belt1 = new Belt(1200, 120);
  belt2 = new Belt(1320, 120);
  trash = new TrashCan(1440, 120);
  sink1 = new Sink(1680, 360);
  sink2 = new Sink(1680, 480);
  
  Plate plate1 = new Plate(0,0);
  Plates = new Inventory(plate1, 10, 1080.0, 120.0);
  Dashi = new Inventory(new Dashi(0,0), 200, 1080.0, 480.0);
  Miso = new Inventory(new Miso(0,0), 200, 960.0, 480.0);
  SalmonFish = new Inventory(new Salmon(0,0), 200, 840.0, 480.0);
  TunaFish = new Inventory(new Tuna(0,0), 200, 720.0, 480.0);
  Tofu = new Inventory(new Tofu(0,0), 200, 600.0, 480.0);
  Rice = new Inventory(new Rice(0,0), 200, 1200.0, 480.0);
  Seaweed = new Inventory(new Seaweed(0,0), 200, 1440.0, 840.0);
  Seaweed2 = new Inventory(new Seaweed(0,0), 200, 480.0, 480.0);;
  
  manager.add(counter0);
  manager.add(counter1);
  manager.add(counter2);
  manager.add(counter3);
  manager.add(board0);
  manager.add(board1);
  manager.add(belt1);
  manager.add(belt2);
  manager.add(trash);
  manager.add(Plates);
  //manager.add(stove);
  manager.add(stove1);
  manager.add(stove2);
  manager.add(stove3);
  manager.add(Dashi);
  manager.add(Miso);
  manager.add(SalmonFish);
  manager.add(TunaFish);
  manager.add(Tofu);
  manager.add(Rice);
  manager.add(Seaweed);
  manager.add(Seaweed2);
  manager.add(sink1);
  manager.add(sink2);

  
  setEasy();
  timerDisplay();
  
}

void draw(){
  background(225);
  stroke(0);
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
  noStroke();
  
    
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
  Plates.display();
  Dashi.display();
  Miso.display();
  SalmonFish.display();
  TunaFish.display();
  Tofu.display();
  Rice.display();
  Seaweed.display();
  Seaweed2.display();
  sink1.display();
  sink2.display();
  
  
  if (timerRunning){
    int secPassed = millis() - startTime;
    secLeft = totalTime - secPassed;
    if(secLeft <= 0){
      secLeft = 0;
      timerRunning = false;
      victoryScreen();
    }
  }
  
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
  
  //stove.animate();
  //stove.display();
  stove1.display();
  stove2.display();
  stove3.display();
  
  
//>>>>>>> Han-Xiao
  //victoryScreen();
}

 
