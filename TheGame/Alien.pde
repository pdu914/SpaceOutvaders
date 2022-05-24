public class Alien{
  int x;
  int y;
  PImage pic;
  public Alien(int newx,int newy,PImage newpic){
    x=newx;
    y=newy;
    pic=newpic;
  }
  void draw(){
    image(pic,x,y,pic.width/30,pic.height/30);
  }
}
