class MonsterLaser extends Laser{
  public MonsterLaser(int x1,int y1){
    super(x1,y1);
  }
  void move(){
    y+=2;
  }
}
