PImage alienPic;
ArrayList<Alien> aliens;

void setup(){
  size(800,800);
  alienPic=loadImage("alien.png");
  aliens=new ArrayList<Alien>();
  aliens.add(new Alien(0,0,alienPic));
}
void draw(){
  background(0);
  //aliens.get(0).draw();
  Invaders monsters=new Invaders(3,alienPic);
  monsters.draw();
}
