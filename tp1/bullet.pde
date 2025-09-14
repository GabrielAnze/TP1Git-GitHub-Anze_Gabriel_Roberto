class Bullet {
  float x, y, vy;

  Bullet(float x0, float y0){
    x = x0;
    y = y0;
    vy = -6; // hacia arriba
  }

  void update(){
    y += vy;
  }

  void display(){
    fill(255, 255, 0);
    ellipse(x, y, 6, 6);
  }

  boolean offscreen(){
    return y < -10;
  }
}
