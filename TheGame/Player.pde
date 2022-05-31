class Player{
 PImage shooterPic;
 int x;
 int y;
 ArrayList<Laser> lasers;
 int lives;
 int dir;
 
 public Player(PImage pic){
   shooterPic=pic;
   x=width/2;
   y=height-60;
   lasers=new ArrayList<Laser>();
   lives=3;
   dir=0;
 }
 
 void draw(){
   image(shooterPic,x,y,shooterPic.width/15,shooterPic.height/15);
   System.out.println(shooterPic.width/15);
   System.out.println(shooterPic.height/15);
 }
 
 void shoot(){
   lasers.add(new PlayerLaser(x+32,y));
 }
 
 void moveLeft(){
   dir=-1;
 }
 
 void moveRight(){
   dir=1;
 }
}
