PImage alienPic;
ArrayList<Alien> aliens;
Invaders monsters;

void setup(){
  size(800,800);
  alienPic=loadImage("alien.png");
  aliens=new ArrayList<Alien>();
  aliens.add(new Alien(0,0,alienPic));
  monsters=new Invaders(3,alienPic);
}
void keyPressed(){
  if (key=='d'){
    monsters.shiftDown();
  }
}
void draw(){
  background(0);
  //aliens.get(0).draw();
  monsters.draw();
}
