class Levels{
  Invaders monsters;
  Player player;
  public Levels(Invaders mon,Player play){
    monsters=mon;
    player=play;
  }
  void draw(){
    monsters.updateEverything(player);
    monsters.draw();
    player.updateEverything();
    player.draw();
  }
}
