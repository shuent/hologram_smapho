int NUM = 30;
int SUM_R = 200;
float MAX_SIZE = 20;

float[] short_r = new float[NUM];
float[] long_r = new float[NUM];
float[] inti_x = new float[NUM];
float[] inti_y = new float[NUM];
float t;
float[] max_size = new float[NUM];
float[] init_size = new float[NUM];

float[] point_r = new float[NUM];
float[] point_g = new float[NUM];
float[] point_b = new float[NUM];
float size_point;

void setup() {
  size(720, 400);
  background(0);
  t = 0;

  // set random variables
  for (int i = 0; i < NUM; i++) {
    short_r[i] = floor(random(SUM_R));
    long_r[i] = floor(random(SUM_R));
    inti_x[i] = random(SUM_R);
    inti_y[i] = random(SUM_R);

    max_size[i] = random(MAX_SIZE);
    init_size[i] = random(MAX_SIZE);

    point_r[i] = random(255);
    point_g[i] = random(255);
    point_b[i] = random(255);

  }
}

float x,y;

void draw(){

  // transparent background
  fill(0,50);
  rect(0, 0, width, height);

  translate(width/2, height/2);
  noStroke();
  for (int j = 0; j < NUM; j++) {

    fill(point_r[j],point_g[j],point_b[j],200);

    x = short_r[j] * cos(t + inti_x[j]);
    y = long_r[j] * sin(t + inti_y[j]);

    size_point = max_size[j] * cos(t + inti_x[j]) + init_size[j];

    ellipse(x, y, size_point, size_point);
  }

  t += 0.03;
}