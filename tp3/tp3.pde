// tp3
// Estefania Raffaelli
// lejago N°120358/7
// COM 5 Docente: Tobias Albirosa
// https://youtu.be/BF2vQy9Qbq8

PImage img;
int pantalla;
void setup() {
  size(800, 400);
  img = loadImage("fondo.jpg");
  noStroke();
  pantalla = 1;
  fill(5, 82, 76);
  circle(599, 200, 400);
  fill(15, 90, 108);
  circle(599, 200, 370);
  fill(15, 5, 108);
  circle(599, 200, 340);
  fill(92, 5, 110);
  circle(599, 200, 310);
  fill(93, 5, 72);
  circle(599, 200, 280);
  fill(193, 0, 61);
  circle(599, 200, 250);
  fill(160, 5, 23);
  circle(599, 200, 220);
  fill(253, 3, 32);
  circle(599, 200, 190);
  fill(250, 155, 30);
  circle(599, 200, 160);
  fill(240, 186, 99);
  circle(599, 200, 130);
  fill(242, 250, 30);
  circle(599, 200, 100);
  fill(25, 209, 39);
  circle(599, 200, 70);
  fill(77, 142, 119);
  circle(599, 200, 40);
  fill(55, 89, 77);
  circle(599, 200, 10);
}

void draw() {
  image(img, 0, 0, 400, 400);

  int[] colors = {
    color(5, 82, 76),
    color(15, 90, 108),
    color(15, 5, 108),
    color(92, 5, 110),
    color(93, 5, 72),
    color(193, 0, 61),
    color(160, 5, 23),
    color(253, 3, 32),
    color(250, 155, 30),
    color(240, 186, 99),
    color(242, 250, 30),
    color(25, 209, 39),
    color(77, 142, 119),
    color(55, 89, 77)
  };

  int numCircles = colors.length;
  float baseSize = 400;
  float sizeStep = baseSize / numCircles;
  if (pantalla == 0) {
    for (int i = 0; i < numCircles; i++) {
      cambiarTamaños(i, colors, baseSize, sizeStep);
    }
  }
}

void cambiarTamaños(int i, int[] colors, float baseSize, float sizeStep) {
  float sizeFactor = map(mouseX, 0, width, 0.5, 1.5);
  fill(colors[i]);
  circle(599, 200, baseSize - i * sizeStep * sizeFactor);
}

void mousePressed() {
  if (pantalla == 0) {
    pantalla = 1;
  } else if (pantalla == 1) {
    pantalla = 0;
  }
}
void keyPressed() {
  println(keyCode);
  if (keyCode == 32) {
    fill(5, 82, 76);
    circle(599, 200, 400);
    fill(15, 90, 108);
    circle(599, 200, 370);
    fill(15, 5, 108);
    circle(599, 200, 340);
    fill(92, 5, 110);
    circle(599, 200, 310);
    fill(93, 5, 72);
    circle(599, 200, 280);
    fill(193, 0, 61);
    circle(599, 200, 250);
    fill(160, 5, 23);
    circle(599, 200, 220);
    fill(253, 3, 32);
    circle(599, 200, 190);
    fill(250, 155, 30);
    circle(599, 200, 160);
    fill(240, 186, 99);
    circle(599, 200, 130);
    fill(242, 250, 30);
    circle(599, 200, 100);
    fill(25, 209, 39);
    circle(599, 200, 70);
    fill(77, 142, 119);
    circle(599, 200, 40);
    fill(55, 89, 77);
    circle(599, 200, 10);
    pantalla = 1;
  }
}
