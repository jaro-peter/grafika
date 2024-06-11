void setup(){
  size (400,400);
  background(255);
}

int x=0;
void line_1(int x1,int y1,int x2,int y2){
  float m=float(y2-y1)/(x2-x1);
  println(m);
  float b=y1-m*x1;
  if (x1<x2){
    for (int i=x1; i<=x2; i=i+10){
    float y=m*i+b;
     point(i,(int)y);
}  
  }else{
    for (int i=x1;i>x2; i=i-10){
      float y=m*i+b;
        point (x, (int)y);
}
  }
}
void draw(){
  background(255);
   line_1(50,350,390,10);
   
  
}
