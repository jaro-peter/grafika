  import java.util.Scanner;
import java.io.*;



float t[][]=new float[8][6];
void setup() {
  size(400, 400);
  background(255);
  File f=new File(sketchPath("in.txt"));
  try ( Scanner sc=new Scanner(f)) {
    for (int i=0; i<t.length; i++)
      for (int j=0; j<6; j++)
        t[i][j]=sc.nextInt();
  }
  catch (FileNotFoundException io) {
    println(io);
  }
}

 float[] alakit(float x, float y, float z){
      float xc=-100;
      float yc=-100;
      float zc=-300;
      float f= z-zc;
      float newX = ((x - xc) * (f/z)) + xc;
      float newY = ((y - yc) * (f/z)) + yc;
      return new float[]{newX, newY};
    }

void draw() {
  
  background(255);
  for (int i=0; i<t.length; i++){
    //X' = ((X - Xc) * (F/Z)) + Xc
    //Y' = ((Y - Yc) * (F/Z)) + Yc
     
     float[] elsoPont=alakit(t[i][0],t[i][1],t[i][2]);
     float[] masodikPont=alakit(t[i][3],t[i][4],t[i][5]);
    line_2((int) elsoPont[0], (int) elsoPont[1],
      (int)masodikPont[0], (int)masodikPont[1]);  
    }
}
 

void line_2(int x1, int y1, int x2, int y2) {
  int nh=abs(x2-x1)>abs(y2-y1)?  abs(x2-x1):abs(y2-y1);
  float dx=1.*(x2-x1)/nh, dy=1.*(y2-y1)/nh,
    x=x1, y=y1;
  for (int i=0; i<=nh; i++) {
    point((int)x, (int)y);
    x+=dx;
    y+=dy;
  }
}
