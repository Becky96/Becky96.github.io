

int elements = 5000;
float spacing = TWO_PI/elements;

float x, y;

boolean pressed = false;

int co = 1;
//int magnify = 37;
int magnify = 175;

int[] r = new int[co];
int[] g = new int[co];
int[] b = new int[co];
float[] amp1 = new float[co];
float[] amp2 = new float[co];



int[] r2 = new int[co];
int[] g2 = new int[co];
int[] b2 = new int[co];
float[] amp3 = new float[co];
float[] amp4 = new float[co];


int[] r3 = new int[co];
int[] g3 = new int[co];
int[] b3 = new int[co];
int[] amp5 = new int[co];
int[] amp6 = new int[co];

int[] r4 = new int[co];
int[] g4 = new int[co];
int[] b4 = new int[co];
int[] amp7 = new int[co];
int[] amp8 = new int[co];


int[] r5 = new int[co];
int[] g5 = new int[co];
int[] b5 = new int[co];
int[] amp9 = new int[co];
int[] amp10 = new int[co];


float backR, backG, backB;

float adder = 10;




float angle = 0.0;
void setup() {
  size(800, 800, P3D);

  frameRate(60);
  background(1);

  //colorMode(HSB);
  
  

    backR = random(0, 55);
    backG = random(0, 55);
    backB = random(0, 55);



  for (int i = 0; i < co; i++) {
    amp1[i] = random(0, 100);
    amp2[i] = random(0, 100);
    r[i] = int(random(100, 255));
    g[i] = int(random(100, 255));
    b[i] = int(random(100, 255));



    amp3[i] = random(0, 100);
    amp4[i] = random(0, 100);
    r2[i] = int(random(0, 255));
    g2[i] = int(random(0, 255));
    b2[i] = int(random(0, 255));

  }
  
  
  for (int i = 0; i < 1; i++) {



    pushMatrix(); 


    translate(width/2, height/2);
 
    scale(1.75);

    pattern2(amp1[0], amp2[0], amp3[0], amp4[0], amp5[0], amp6[0], amp7[0], amp8[0], r[0], g[0], b[0], r2[0], g2[0], b2[0], r3[0], g3[0], b3[0], r4[0], g4[0], b4[0], r5[0], g5[0], b5[0]);
    popMatrix();
  }
  
  
}


void draw() {
//background(backR, backG, backB);




 
  
}





void pattern2(float amp1, float amp2, float amp3, float amp4, int amp5, int amp6, int amp7, int amp8, int r, int g, int b, int r2, int g2, int b2, int r3, int g3, int b3, int r4, int g4, int b4, int r5, int g5, int b5) {




  for (int i = 1; i < elements; i++) {

    pushMatrix();

    noFill();
    noStroke();

 

    
 //ellipse(cos(spacing*i*amp1)*sin(spacing*i*amp2)*magnify, cos(spacing*amp3*i)*tan(spacing*amp8*i)*magnify, 1.5, 1.5);
//    ellipse(cos(spacing*i*amp1)*sin(spacing*i*amp2)*magnify, sin(spacing*amp3*i)*sin(spacing*amp8*i)*magnify, 1.5, 1.5);
    
    
    //Fill whole screen design 
    /*
    x = cos(spacing*i*amp1)/sin(spacing*i*amp2)*magnify;
     y = sin(spacing*amp3*i)/sin(spacing*amp4*i)*magnify;
     */
     
     
     /*Triangle spiral pattern
      x = sin(spacing*i*amp1)/tan(spacing*i*amp2)*magnify;
     y = cos(spacing*amp1*i)/tan(spacing*amp2*i)*magnify;
     */
     
      x =cos(spacing*i*amp1)*sin(spacing*i*amp2)*magnify;
     y = cos(spacing*(-amp3)*i)*cos(spacing*amp2*i)*magnify;
    strokeWeight(1);
        stroke(r, g, b, 15);
    line(x, y,  cos(x*spacing*i)*sin(y*spacing*i), sin(y*spacing*i)*sin(x*spacing*i));
    
    
        strokeWeight(2.5);
    stroke(r*2, g*2, b*2, 15);
    point(x, y);
    point(x+0.5, y+0.5);
    point(x-0.5, y-0.5);
   

    

    popMatrix();



 
  }
}