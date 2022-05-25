class Invaders{
  PImage alienPic;
  int rows;
  int dir;
  int y;
  ArrayList<Alien> aliens;
  float speed;
  int laserTime;
  ArrayList<Laser> lasers;
  
  public Invaders(int rows1,PImage alImage){
    alienPic=alImage;
    rows=rows1;
    dir=0;
    y=60;
    speed=0.5;
    laserTime=0;
    aliens=new ArrayList<Alien>();
    lasers=new ArrayList<Laser>();
  }
  
  void initializeAliens(){
    int y=60;
    for (int i=0;i<rows;i++){
      for (int x=60;x<740;x+=60){
        aliens.add(new Alien(x,y,alienPic));
      }
      y+=60;
    }
  }
}
