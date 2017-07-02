
int center_x;
int center_y;

PGrafics pg;
void setup() {
  size(720, 400, P3D);
  center_x = width/2;
  center_y = height/2;

  // pg = createGraphics(100,100);
}

float t=0;
int[] init_position = new int[3];

void draw() {
  t += 0.008;
  background(0, 10);

  translate(center_x, center_y, 0);
  pushMatrix();
  moving_ellipse(t);

  popMatrix();
  pushMatrix();
  rotateZ(PI/3); //初期位置をずらした
  rotateY(PI/2)
  moving_ellipse(t);

  popMatrix();
  rotateZ(2*PI/3);
  rotateX(-PI/2);
  moving_ellipse(t);

}



final float LONG_R = 180;
final float SHORT_R = 50;
float u,v;


void moving_ellipse(float t){
  rotateZ(t);
  rotateX(t);
  rotateY(t);
  noFill();
  stroke(180, 180, 0);
  strokeWeight(1);
  point(0, 0, 0);
  ellipse(0, 0, LONG_R*2, SHORT_R*2);
  u = LONG_R*cos(t);
  v = SHORT_R*sin(t);
  moving_point(u,v);
}

// move point along ellipse
void moving_point(float u,float v){
  // ellipse(u, v, 10, 10);
  noStroke();
  fill(255);
  // ellipse(u, v, 10, 10);
  // ambientLight(20, 20, 20);    //環境光を当てる
  lightSpecular(255, 255, 255);    //光の鏡面反射色（ハイライト）を設定
  directionalLight(100, 100, 100, 0, 0, -1);    //指向性ライトを設定
  translate(u, v, 0);
  specular(180,180,0);
  sphere(10);


}

