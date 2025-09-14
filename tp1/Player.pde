class Player {
float x, y;
Player(float x0, float y0){ x = x0; y = y0; }
void update(){
if (keyPressed) {
if (keyCode == LEFT) x -= 5;
if (keyCode == RIGHT) x += 5;
}
x = constrain(x, 20, width-20);
}
void display(){
fill(255);
rectMode(CENTER);
rect(x,y,40,20);
}
}
