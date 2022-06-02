class Boss1{
  int x;
  int y;
  PImage pic;
  public Boss1(int x1,int y1,PImage pic1){
    x=x1;
    y=y1;
    pic=pic1;
  }
  void draw(){
    image(pic,x,y,pic.width/2,pic.height/2);
  }
}
