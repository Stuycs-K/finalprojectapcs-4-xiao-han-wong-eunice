# Dev Log:

This document must be updated daily every time you finish a work session.

## Eunice Wong

### 2025-05-16 - Brainstorming
Talked about in class what were the possible options.

### 2025-05-18 - Prototype
Worked together to write the basics of how our game would work and what to be expected

### 2025-05-19 && 2025-05-20 - Continued Brainstorming
After laying out possible options started to think what were the necessary classes and what things we might run into while coding.

### 2025-05-23 - Edited Prototype.mD started basic coding (40 min)
We thought of ways to track motion of both the bot and the players and used decided grids would be the easiest to implement
Got the basic classes that would be needed for this project and started to write them
  - Player
  - Overcooked
  - Order
  - FoodItem
      - included the constructor and the times that FoodItems would use
      - tried to implement changeState()
  - Appliances

### 2025-05-27 - FoodItem, Order, Matter classes (40 min)
Deleted bots from our game because we were told that it was not a smart idea. 
Continued to work on the classes
  - FoodItem : getter methods
  - Order : made a constructor that takes in ingredients and as food is prepared it will be put into the prepared array using the
    addPreparedItem(FoodItem item) method and isCompleted(FoodItem item) method will check if the order is completed
  - Matter : started class that will be the abstract class that other classes will extend from. added getter methods

### 2025-05-28 - FoodItem, Droppable classes(20 min)
Continued to work on the classes
  - Droppable: made this class for items that are droppable in certain areas. added getter methods
  - Dashi: gave it specific cooking,washing,chopping time
 
### 2025-05-29 - Individual FoodItems(50 min)
assigned specific variables to specific foodItems to differentiate them
  - Rice
  - Salmon
  - Seaweed
  - Tofu
  - Tuna
FoodItem: fixed constructor to fit the matter constructor
Player: used millis() to allow for a certain matter to be cleaned/washed/chopped

### 2025-05-30 - Individual FoodItems(30 min)
Started on receipes and what the ingredients needed to make it
  - SalmonSashimi
Player: fixed up the wash and chop methods to also implement specific times before the action is completed

### 2025-06-01 - FoodItem Receipes(20 min)
Continued on receipes 
  - Miso Soup
  - Salmon Sashimi
  - Tuna Sashimi

### 2025-06-02 - Appliances(20 min)
  - chopping: implements Droppable and if the item taken at the constructor has a chopping time then chop
  - stove: implements Droppable and if the item taken at the constructor has a cooking time then cook
  - sink: implements Droppable and if the item taken at the constructor has a washing time then wash

### 2025-06-03 - Not Movable Matter + Victory Screen(180 min)
  - made a new class that takes in all appliances(matter that cannot be walked into)
      - checks if the place the player wants to walk into is the same as the appliance location
  - started on the end screen of the game
      - added the paper scroll looking thing where the points are going to show
      - added 3 stars in the middle that will turn yellow only if certain points are reaches

### 2025-06-04 - Onion Man(120 min)


### 2025-06-05 - Onion Man(100 min)

### 2025-05-06 - Onion Man + animation(100 min)

### 2025-06-07 - Tested facing + dog(180 min)
Created the animation for stove but couldn't tell why the method wasn't working. Added print debugging statements to figure out the problem.
Started on the dog features
### 2025-06-08 - Animation(120)
Created and tested a



