PImage alienPic;
Invaders monsters;
Player player;
PImage shooter;
PurpleAlien purp;
PImage purpPic;
PImage boss1Pic;
Level1 lvl1;
Level2 lvl2;
Boss1 b;
Alien green;
Invaders monsterslvl2;
void setup(){
  size(800,800);
  alienPic=loadImage("alien.png");
  monsters=new Invaders(3,alienPic);
  shooter=loadImage("shooter.png");
  player=new Player(shooter);
  purpPic=loadImage("purpalien.png");
  purp=new PurpleAlien(20,20,purpPic);
  boss1Pic=loadImage("Boss1.png");
  b=new Boss1(100,100,boss1Pic);
  //lvl1=new Level1(monsters,player);
  green=new Alien(100,100,alienPic);
  monsterslvl2=new Invaders(3,alienPic,purpPic);
  lvl2=new Level2(monsterslvl2,player);
}
void keyPressed(){
  if (keyCode==39){
    player.moveRight();
  }
  if (keyCode==37){
    player.moveLeft();
  }
  if (key==' '){
    player.shoot();
  }
}
void draw(){
  background(0);
  
  //monsters.updateEverything(player);
  //monsters.draw();
  //player.updateEverything();
  //player.draw();
  //if (player.lives==0){
  //  setup();
  //}
  //purp.draw();
  //green.draw();
  //b.draw();
  //lvl1.draw();
  lvl2.draw();
}
