PImage alienPic;
Invaders monsters;
Player player;
PImage shooter;
void setup(){
  size(800,800);
  alienPic=loadImage("alien.png");
  monsters=new Invaders(3,alienPic);
  shooter=loadImage("shooter.png");
  player=new Player(shooter);
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
  monsters.updateEverything(player);
  monsters.draw();
  player.updateEverything();
  player.draw();
  if (player.lives==0){
    setup();
  }
}
