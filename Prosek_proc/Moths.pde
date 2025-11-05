void moth (float scale) {
  for (int i = 0; i < 100; i++) {

    drawMoth1(scale, true);
    drawMoth2(scale, true);
    drawMoth3(scale, true);
  }
  for (int i = 0; i < 250; i++) {

    drawMoth1(scale, false);
    drawMoth2(scale, false);
    drawMoth3(scale, false);
    drawMoth2(scale, false);
    drawMoth3(scale, false);
  }
}

void drawMoth1 (float side, boolean yes) {
  float x;
  float y;
  if (yes) {
    x = random(side, width - side);
    y = random(side, height - side);
  } else {
    x = random(200, width - 200);
    y = random(100, height - 100);
  }
  float angle = random(360);
  pushMatrix();
  translate(x, y);
  rotate(angle);
  fill(random(255), random(255), random(255), random(150, 255));
  drawTriangle(side);
  rotate(PI);
  translate(0, side * 0.9);
  drawTriangle(side);
  popMatrix();
}

void drawMoth2 (float side, boolean yes) {
  float x;
  float y;
  if (yes) {
    x = random(side, width - side);
    y = random(side, height - side);
  } else {
    x = random(400, width - side * 2);
    y = random(side * 2, height - 200);
  }

  float angle = random(360);
  pushMatrix();
  translate(x, y);
  rotate(angle);
  fill(random(255), random(255), random(255), random(150, 255));
  drawTriangle(side);
  rotate(100);
  translate(0, side * 0.5);
  drawTriangle(side);
  popMatrix();
}

void drawMoth3 (float side, boolean yes) {
  float x;
  float y;
  if (yes) {
    x = random(side, width - side);
    y = random(side, height - side);
  } else {
    x = random(side * 2, width - 250);
    y = random(200, height - side * 2);
  }
  float angle = random(360);
  pushMatrix();
  translate(x, y);
  rotate(angle);
  fill(random(255), random(255), random(255), random(150, 255));
  drawTriangle(side);
  rotate(120);
  translate(0, side * 0.5);
  drawTriangle(side);
  rotate(120);
  translate(0, side * 0.5);
  drawTriangle(side);
  popMatrix();
}

void drawTriangle(float side) {
  pushMatrix();
  beginShape();
  vertex(-side, side);
  vertex(0, -side);
  vertex(side, side);
  endShape(CLOSE);
  popMatrix();
}
