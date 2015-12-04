class Car{
float x;
float y;
float w=50;
float h=25;
float speed;
PImage car;


Car(float x,float y){
this.x=x;
this.y=y;
speed=10;
car=loadImage("car.png");
}

Car(float x,float y, float speed){
this.x=x;
this.y=y;
this.speed=speed;
car=loadImage("car.png");
}



void moveForward(){
x+=speed;
}

void display(){
image(car, x,y);
}

void reset(){
x=-30;
}

}

