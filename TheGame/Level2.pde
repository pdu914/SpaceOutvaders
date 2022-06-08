class Level2 extends Levels{
  public Level2(Invaders mon,Player play){
    super(mon,play);
  }
  void draw(){
    monsters.initializeAliens2();
    monsters.draw();
  }
}
