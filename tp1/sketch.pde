Player player;
ArrayList<Bullet> bullets;
ArrayList<Asteroid> asteroids;


void setup(){
size(600,400);
player = new Player(width/2, height-40);
bullets = new ArrayList<Bullet>();
asteroids = new ArrayList<Asteroid>();
}


void draw(){
background(0);
player.update();
player.display();
for (int i = bullets.size()-1; i>=0; i--) {
bullets.get(i).update();
bullets.get(i).display();
if (bullets.get(i).offscreen()) bullets.remove(i);
}
if (frameCount % 60 == 0) asteroids.add(new Asteroid(random(width), -20));
for (int i = asteroids.size()-1; i>=0; i--) {
asteroids.get(i).update();
asteroids.get(i).display();
if (asteroids.get(i).y > height+20) asteroids.remove(i);
}
}


void keyPressed(){
if (key == ' ') bullets.add(new Bullet(player.x, player.y-10));
}
