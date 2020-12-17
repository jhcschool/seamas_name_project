//Initials are S.X.O. (Seamas Xavier O'Hara)

void setup() {
  size(800, 800);
  background(255);
  // White background since backgrounds go from 0-Black to 255-White.
}

float angle = 0;
// We need this since each object has to be animated. This value will change over time. 
float angle_bottom_s = 0;
float angle_change_velocity = -.01;
int y_speed = 1;
int y = 650;
int x = 400;
int y1 = 550;

void draw() {
  // This is my middle initial: (X)
  if (x <= 500 || x >= 650) {
    // Setting pixel bounds since I don't want my X to go on forever in each direction.
    ellipse(x, y, 10, 10);
    // Gave x and y variables so as frames continue, their values change by a set amount.
    y += -1;
    // Either x or y values needed to be the same... I choose x
    ellipse(x, y1, 10, 10);
    y1 += 1;
    // y-values would have to be different since we don't want them to have the same end.
    x += 1;
  }
  fill(255);

  // This is my last initial: (O)
  angle += 6.5*angle_change_velocity;
  // 6.5 speed so all the letters would look the same in terms of speed.
  translate(600, 600);
  rotate(angle);
  ellipse(50, 0, 10, 10);
  rotate(-1*angle);
  translate(-600, -600);
  // The negatives are for taking our original translation and rotation
  // and changing them back to normal so a line is formed instead of a curve.
  // Note when applying the negative code, the order also has to be changed.

  // This is my top of my first initial: (S)
  if (angle > -5*PI/4 || angle > 0) {
    angle += .2*angle_change_velocity;
    translate(300, 580);
    rotate(angle);
    ellipse(25, -25, 10, 10);
    rotate(-angle);
    translate(-300, -580);
    }
  
  // This is my bottom of my first initial: (S)
  if (angle_bottom_s <= radians(90) || angle_bottom_s <= radians(270)) {
    angle_bottom_s += -6*angle_change_velocity;
    translate(300, 650.710678119);
    rotate(angle_bottom_s);
    ellipse(0, -35.3553390593, 10, 10);
    rotate(-angle_bottom_s);
    translate(-300, -650.710678119);
    }
  
}
