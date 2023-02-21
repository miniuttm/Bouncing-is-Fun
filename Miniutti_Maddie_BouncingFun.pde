int x=0;
int y=0;
int xspeed=5;
int yspeed=5;

void setup() {
  size(700, 600);
}

//call three functions
void draw() {
  display();
  move();
  bounce();
}

//displays the ball and background
void display() {
  background (0);
  stroke (0);
  fill(175);
  ellipse(x, y, 32, 32);
}

//moves the ball and speed
void move() {
  x=x+xspeed;
  y=y+yspeed;
}

//bounces the ball off the walls 
void bounce() {
  if (x>width || x<0) {
    xspeed=xspeed*-1;
  }

  if (y>=height || y<=0) {
    yspeed=yspeed*-1;
  }
}
