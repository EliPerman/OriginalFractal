int h;
double phi;

public void setup(){
  size(1000, 1000);
  colorMode(HSB);
}

public void draw(){
  fractal(500, 500, 500, 0, 0);
}

public void mouseDragged(){
  h = (mouseX+50)*100/1000;
  phi = mouseY*PI/2/1000;
}

public void fractal(int x, int y, int radius, int hue, double theta){
  fill(hue, 255, 255);
  ellipse(x, y, radius*2, radius*2);
  if (radius > 1){
    fractal(x + (int)(radius/2*Math.cos(theta)), y + (int)(radius/2*Math.sin(theta)), radius/2, hue + h, theta + phi);
    fractal(x - (int)(radius/2*Math.cos(theta)), y - (int)(radius/2*Math.sin(theta)), radius/2, hue + h, theta + phi);
  }
}
