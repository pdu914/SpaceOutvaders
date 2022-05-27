class Invaders{
  PImage alienPic;
  int rows;
  int dir;
  int y;
  ArrayList<Alien> aliens;
  float speed;
  int laserTime;
  //ArrayList<Laser> lasers;
  
  public Invaders(int rows1,PImage alImage){
    alienPic=alImage;
    rows=rows1;
    dir=-1;
    y=60;
    speed=0.5;
    laserTime=0;
    aliens=new ArrayList<Alien>();
    initializeAliens();
    //lasers=new ArrayList<Laser>();
  }
  
  void updateEverything(){
    for (Alien x:aliens){
      x.x+= speed*dir;
    }
    if (changeDir()){
      shiftDown();
    }
  }
    
  void initializeAliens(){
    int y=60;
    for (int i=0;i<rows;i++){
      for (int x=30;x<740;x+=60){
        aliens.add(new Alien(x,y,alienPic));
      }
      y+=60;
    }
  }
  
  void shiftDown(){
    for (Alien x:aliens){
      x.y+=10;
    }
  }
  
  void draw(){
    for (Alien x:aliens){
      x.draw();
    }
  }
  
  boolean changeDir(){
    for (Alien x:aliens){
      if (x.x >=width-60){
        dir=-1;
        return true;
      }
      if (x.x<=30){
        dir=1;
        return true;
      }
    }
    return false;
  }
}
