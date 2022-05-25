PImage alienPic;
ArrayList<Alien> aliens;

void setup(){
  size(800,800);
  alienPic=loadImage("alien.png");
  aliens=new ArrayList<Alien>();
  aliens.add(new Alien(0,0,alienPic));
}
void draw(){
  aliens.get(0).draw();
}
