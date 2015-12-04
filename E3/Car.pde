Car [] cars ;
Chicken chicken;
boolean hit;
void setup (){
  size(500,500);
  
  cars = new Car[10];
  for(int i=0; i<cars.length; i++){
    cars[i]=new Car(0,50*i+1, random(3,5));
  }
  chicken=new Chicken(250,0);
}

void draw () {
  background(255);
    for(int i=0; i<cars.length; i++){
    
  cars[i].display();
  
  cars[i].moveForward();
  
  if (cars[i].x > width ) cars[i].reset();  
  hit= isHit(chicken.x, chicken.y, chicken.w, chicken.h, cars[i].x, cars[i].y, cars[i].w, cars[i].h) ;
if(hit==true){chicken. reset();}
}

  chicken. display ();
}


boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh) {
  return (
    ax+aw > bx       &&
    ax    < bx + bw  &&
    ay+ah > by       &&
    ay    < by + bh  );
}

void keyPressed() {
  if (key == CODED ) {
    println(keyCode);
    switch(keyCode) {
    case UP:
    println("up");
       chicken.moveUp();
      break;
    case DOWN:
  chicken.moveDown ();
      break;
    case LEFT:
  chicken.moveLeft ();
      break;
    case RIGHT:
  chicken.moveRight ();
      break;
    }
  }
}
