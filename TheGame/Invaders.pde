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
    speed=1;
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
    int y=44;
    for (int i=0;i<rows;i++){
      for (int x=44;x<width-44;x+=45){
        aliens.add(new Alien(x,y,alienPic));
      }
      y+=44;
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
      if (x.x >=width-44){
        dir=-1;
        return true;
      }
      if (x.x<=22){
        dir=1;
        return true;
      }
    }
    return false;
  }
}
