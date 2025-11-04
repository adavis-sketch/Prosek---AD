void drawTriangle(float side) {
  pushMatrix();
  beginShape();
  vertex(-side/2, side/2);
  vertex(0, -side/2);
  vertex(side/2, side/2);
  endShape(CLOSE);
  popMatrix();
}
