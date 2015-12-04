Car [] cars ;
Chicken chicken;
boolean hit;
void setup (){
  size(500,500);
  
  // 創建 car 物件
  cars = new Car[10];
  for(int i=0; i<cars.length; i++){
    cars[i]=new Car(0,50*i+1, random(3,5));
  }
  chicken=new Chicken(250,0);
}

void draw () {
  background(255);
    for(int i=0; i<cars.length; i++){
  // 把車子畫出來
  cars[i].display();
  
  // 車子往前跑
  cars[i].moveForward();
  
  // 如果車子超過邊界了，就要回到原點。
  if (cars[i].x > width ) cars[i].reset();  
  hit= isHit(chicken.x, chicken.y, chicken.w, chicken.h, cars[i].x, cars[i].y, cars[i].w, cars[i].h) ;
if(hit==true){chicken. reset();}
}

  chicken. display ();
}
/*
  把 E2 的 E2.pde 的程式碼貼進來
  將小雞加進遊戲中，小雞可以上下左右移動，
  碰到車子要回到原點。
  請參考 Chicken 裡面的方法，以及 isHit 方程。

*/


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
