PImage alienPic;
Invaders monsters;
Player player;
PImage shooter;
PurpleAlien purp;
PImage purpPic;
void setup(){
  size(800,800);
  alienPic=loadImage("alien.png");
  monsters=new Invaders(3,alienPic);
  shooter=loadImage("shooter.png");
  player=new Player(shooter);
  purpPic=loadImage("purpalien.png");
  purp=new PurpleAlien(20,20,purpPic);
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
  purp.draw();
}
