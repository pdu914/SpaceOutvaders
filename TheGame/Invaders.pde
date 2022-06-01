class Invaders{
  PImage alienPic;
  int rows;
  int dir;
  int y;
  ArrayList<Alien> aliens;
  float speed;
  int laserTime;
  ArrayList<Laser> lasers;
  ArrayList<Alien> botRow;
  
  public Invaders(int rows1,PImage alImage){
    alienPic=alImage;
    rows=rows1;
    dir=-1;
    y=60;
    speed=1;
    laserTime=0;
    aliens=new ArrayList<Alien>();
    initializeAliens();
    botRow=new ArrayList<Alien>();
    lasers=new ArrayList<Laser>();
  }
  
  void updateEverything(Player shooter){
    for (Alien x:aliens){
      x.x+= speed*dir;
    }
    for (int i=lasers.size()-1;i>=0;i--){
      lasers.get(i).y+=2;
      if (dist(lasers.get(i).x,lasers.get(i).y,shooter.x+20,shooter.y+10)<10){
        shooter.lives--;
        lasers.remove(lasers.get(i));
      }
    }
    if (changeDir()){
      shiftDown();
    }
    if (laserTime>80){
      getBotRow();
      if (botRow.size()>0){
        shoot();
      }
    }
    laserTime++;
    if (aliens.size()==0){
      speed+=0.5;
      initializeAliens();
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
    for (Laser x:lasers){
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
  
  ArrayList<Integer> xpos(){
    ArrayList<Integer> positions=new ArrayList<Integer>();
    for (Alien x:aliens){
      positions.add(x.x);
    }
    return positions;
  }
  
  boolean contact(int x,int y){
    for (int i=aliens.size()-1;i>=0;i--){
      Alien curr=aliens.get(i);
      if (dist(curr.x+22,curr.y+16,x,y)<10){
        aliens.remove(i);
        return true;
      }
    }
    return false;
  }
  void getBotRow(){
    ArrayList<Integer> positions=xpos();
    for (int i=0;i<positions.size();i++){
      int y=0;
      Alien botAlien=null;
      for (Alien x:aliens){
        if (x.x==positions.get(i)){
          if (x.y>y){
            y=x.y;
            botAlien=x;
          }
        }
      }
      botRow.add(botAlien);
    }
  }
    
  void shoot(){
    Alien alienThatShoots=botRow.get((int)(Math.random()*botRow.size()));
    Laser projectile=new MonsterLaser(alienThatShoots.x+22,alienThatShoots.y+22);
    lasers.add(projectile);
    laserTime=0;
  }
  
}
