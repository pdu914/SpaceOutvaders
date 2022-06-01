class Player{
 PImage shooterPic;
 int x;
 int y;
 ArrayList<PlayerLaser> lasers;
 int lives;
 int dir;
 int score;
 
 public Player(PImage pic){
   shooterPic=pic;
   x=width/2-32;
   y=height-60;
   lasers=new ArrayList<PlayerLaser>();
   lives=3;
   dir=0;
   score=0;
 }
 
 void updateEverything(){
   x+=2*dir;
   if (x<=0){
     x=0;
   }
   if (x>width-64){
     x=width-64;
   }
   for (int i=lasers.size()-1;i>=0;i--){
     lasers.get(i).move();
     if (monsters.contact(lasers.get(i).x,lasers.get(i).y)){
       lasers.remove(i);
       score+=10;
       break;
     }
     else if (lasers.get(i).y<=0){
       lasers.remove(i);
       break;
     }
   }
 }
 void draw(){
   image(shooterPic,x,y,shooterPic.width/15,shooterPic.height/15);
   fill(255);
   text("LIVES",20,20);
   for (int i=0;i<lives;i++){
     image(shooterPic,60+40*i,20,shooterPic.width/15,shooterPic.height/15);
   }
   for (PlayerLaser x:lasers){
     x.draw();
   }
   text("Score", 80,20);
   fill(255);
   text(score,120,20);
   //System.out.println(shooterPic.width/15);
   //System.out.println(shooterPic.height/15);
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
