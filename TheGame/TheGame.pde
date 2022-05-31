PImage alienPic;
ArrayList<Alien> aliens;
Invaders monsters;
Player player;
PImage shooter;
void setup(){
  size(800,800);
  alienPic=loadImage("alien.png");
  aliens=new ArrayList<Alien>();
  aliens.add(new Alien(0,0,alienPic));
  monsters=new Invaders(3,alienPic);
  shooter=loadImage("shooter.png");
  player=new Player(shooter);
}
void keyPressed(){
  if (key=='s'){
    monsters.shiftDown();
  }
  if (key=='d'){
    monsters.updateEverything();
  }
}
void draw(){
  background(0);
  //aliens.get(0).draw();
  monsters.updateEverything();
  monsters.draw();
  player.draw();
}
