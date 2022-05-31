class Laser{
  int x;
  int y;
  public Laser(int x1,int y1){
    x=x1;
    y=y1;
  }
  void draw(){
    fill(255);
    rect(x,y,6,20);
  }
}
