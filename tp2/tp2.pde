//TP2
//COMISION5
//ESTEFANIA RAFFAELLI
//LEGAJO NÚMERO 120358/7

int tiempo, suma, diametro, animacion, pantalla, limiteDeAnimacion, opacidad, tamTexto;
String texto1, texto2, texto3, texto4;
PImage img1, img2, img3;
boolean ultimaPantalla;
color colorDelBoton, colorDelBotonCircular;

void setup() {
  animacion = 0;
  limiteDeAnimacion = 300;

  opacidad = 0;
  pantalla = 1;
  tamTexto = 20;
  size(640, 480);
  textSize(tamTexto);
  texto1 = "Caperucita Roja lleva comida a su abuela enferma.";
  texto2 = "El lobo se disfraza de la abuela y trata de atrapar a Caperucita.";
  texto3 = "Un cazador la rescata a tiempo y captura al lobo.";
  texto4 = "Fin de la historia.";
  img1 = loadImage("CR1.JPG");
  img2 = loadImage("CR2.JPG");
  img3 = loadImage("CR3.JPG");

  ultimaPantalla = false;
  colorDelBoton = color(120, 120, 120);
  colorDelBotonCircular = color(120, 120, 120);
}

void draw() {
  if (!ultimaPantalla) {
    animacion++;

    if (animacion > 300) {
      animacion = 0;
      pantalla++;
      if (pantalla > 4) {
        pantalla = 1;
      }
      if (pantalla == 4) {
        ultimaPantalla = true;
      } else {
        ultimaPantalla = false;
      }
    }
  }

  background(0);

  if (pantalla == 1) {
    image(img1, 0, 0, 640, 480); 
    fill(255);
    text(texto1, animacion, height / 2);
  }

  if (pantalla == 2) {
    image(img2, 0, 0, 640, 480);
    fill(255);
    text(texto2, 50, animacion);
  }

  if (pantalla == 3) {
    image(img3, 0, 0, 640, 480);
    
    if (animacion < 255) {
      opacidad = animacion;
    }
    fill(255, opacidad);
    text(texto3, 50, height / 2);
  }

  if (pantalla == 4) {
    if (animacion < 150) {
      if (tamTexto < 72) {
        tamTexto++;
      }
    } else {
      if (tamTexto > 48) {
        tamTexto--;
      }
    }
    textSize(tamTexto);
    fill(255, opacidad);
    text(texto4, 5, height / 2);

    // DIBUJAR EL BOTÓN DE REINICIO
    if (ultimaPantalla) {
      push();
      fill(colorDelBoton);
      rect(width / 2 - 150, height / 2 + 50, 300, 50);
      fill(colorDelBotonCircular);
      circle(100, height / 2 + 100, diametro); 
      textSize(32);
      fill(0);
      text("Reiniciar", width / 2 - 70, height / 2 + 85); 
      pop();
    }
  }
}

void mouseClicked() {
  if (ultimaPantalla) {
    // BOTÓN RECTANGULAR
    if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 &&
      mouseY > height / 2 + 50 && mouseY < height / 2 + 100) {
      reiniciarAnimacion();
    }

    // BOTÓN CIRCULAR
    if (dist(100, height / 2 + 100, mouseX, mouseY) < diametro / 2) {
      reiniciarAnimacion();
    }
  }
}

void mouseMoved() {
  if (ultimaPantalla) {
    // CONDICIÓN PARA BOTÓN RECTANGULAR
    if (mouseX > width / 2 - 150 && mouseX < width / 2 + 150 &&
      mouseY > height / 2 + 50 && mouseY < height / 2 + 100) {
      colorDelBoton = color(0, 255, 0);
    } else {
      colorDelBoton = color(120, 120, 120);
    }
    
    // CONDICIÓN PARA BOTÓN CIRCULAR
    if (dist(100, height / 2 + 100, mouseX, mouseY) < diametro / 2) {
      colorDelBotonCircular = color(0, 255, 0);
    } else {
      colorDelBotonCircular = color(120, 120, 120);
    }
  }
}

void reiniciarAnimacion() {
  pantalla = 1;
  animacion = 0;
  ultimaPantalla = false;
  opacidad = 0;
  tamTexto = 20;
}
