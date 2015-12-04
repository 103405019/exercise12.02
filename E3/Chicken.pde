class Chicken {
  float x ; 
  float y ;
  float w=40;
  float h=55;
  PImage img ;
  float speed = 10 ; 
  Chicken (float x , float y ) {
    img = loadImage("chicken.png") ;
    this.x = x ; 
    this.y = y ;

  }
  void reset(){
    x = width / 2  ;  // 這裏指的是 整個遊戲的 width
    y = 0 ; 
  }
  void display (){
    image(img,x,y);
  }
  
  
  void moveUp (){

    y-= speed ;
  }
  void moveDown (){
    y+= speed ;
  }
  void moveLeft (){
    x-= speed ;
  }
  void moveRight (){
    x+= speed ;
  }
  
}
