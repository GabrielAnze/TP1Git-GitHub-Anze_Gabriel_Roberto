class Asteroid {
  float x, y, vy;

  Asteroid(float x0, float y0){
    x = x0;
    y = y0;
    vy = 2; // velocidad de caída
  }

  void update(){
    y += vy;
  }

  void display(){
    fill(150);
    ellipse(x, y, 30, 30);
  }
}
