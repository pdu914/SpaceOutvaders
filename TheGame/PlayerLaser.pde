class PlayerLaser extends Laser{
  public PlayerLaser(int x1,int y1){
    super(x1,y1);
  }
  void move(){
    y-=6;
  }
}
