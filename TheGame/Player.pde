class Player{
 PImage shooterPic;
 int x;
 int y;
 ArrayList<Laser> lasers;
 int lives;
 
 public Player(PImage pic){
   shooterPic=pic;
   x=width/2;
   y=height-20;
   lasers=new ArrayList<Laser>();
   lives=3;
 }
 
 
}
