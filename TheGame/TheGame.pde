PImage alienPic;
Invaders monsters;
Player player;
PImage shooter;
PurpleAlien purp;
PImage purpPic;
PImage boss1Pic;
Level1 lvl1;
Boss1 b;
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
  lvl1=new Level1(monsters,player);
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
  //aliens.get(0).draw();
  //monsters.updateEverything(player);
  //monsters.draw();
  //player.updateEverything();
  //player.draw();
  //if (player.lives==0){
  //  setup();
  //}
  //purp.draw();
  //b.draw();
  lvl1.draw();
}
