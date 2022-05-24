PImage alienPic;
ArrayList<Alien> aliens;
void preload(){
  alienPic=loadImage("alien.png");
}
void setup(){
  size(400,400);
  aliens=new ArrayList<Alien>();
  aliens.add(new Alien(0,0,alienPic));
}
void draw(){
  aliens.get(0).draw();
}
