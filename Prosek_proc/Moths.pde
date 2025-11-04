void moth (float scale) {
  for (int i = 0; i < 750; i++) {

    drawMoth1(scale);
  }    

void drawMoth1 (float side) {
  float x = random(side, width - side);
  float y = random(side, height - side);
  float angle = random(360);
  pushMatrix();
  translate(x, y);
  rotate(angle);
  fill(random(255), random(255), random(255), random(255));
  drawTriangle(side);
  rotate(PI);
  translate(0, side * 0.9);
  drawTriangle(side);
  popMatrix();
}
void drawTriangle(float side) {
  pushMatrix();
  beginShape();
  vertex(-side/2, side/2);
  vertex(0, -side/2);
  vertex(side/2, side/2);
  endShape(CLOSE);
  popMatrix();
}
