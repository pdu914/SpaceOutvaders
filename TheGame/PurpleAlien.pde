class PurpleAlien{
  int x;
  int y;
  PImage pic;
  public PurpleAlien(int x1,int y1,PImage pic1){
    x=x1;
    y=y1;
    pic=pic1;
  }
  void draw(){
    image(pic,x,y,pic.width/10,pic.height/10);
  }
}
