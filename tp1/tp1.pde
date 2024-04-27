//tp1
//Estefania Raffaelli
//COM 5

PImage img;

void setup(){
  size(800,400);
  background(211,190,190);
  img = loadImage("fondo.jpg");
}

void draw(){
    background(211,190,190);

  image(img,0,0,400,400);
  fill(165,68,130);
  ellipse(671,205, 245, 245);
  
  fill(165,68,130);
  ellipse(675,180, 245, 245);
  fill(180,80,140);
  ellipse(675,180, 230, 230);
  fill(200,150,180);
  ellipse(675,180, 215,215);
  fill(180,80,140);
  ellipse(675,180, 200,200);
  fill(200,150,180);
  ellipse(675,180, 185,185);
  fill(180,80,140);
  ellipse(675,180, 170,170);
  fill(200,150,180);
  ellipse(675,180, 155,155);
  fill(180,80,140);
  ellipse(675,180,140,140);
  fill(200,150,180);
  ellipse(675,180,125,125);
  fill(180,80,140);
  ellipse(675,180,110,110);
  fill(200,150,180);
  ellipse(675,180,95,95);
  fill(180,80,140);
  ellipse(675,180,80,80);
  fill(200,150,180);
  ellipse(675,180,65,65);
  fill(180,80,140);
  ellipse(675,180,50,50);
  fill(200,150,180);
  ellipse(675,180,35,35);
  fill(180,80,140);
  ellipse(675,180,20,20);
  fill(200,150,180);
  ellipse(675,180,5,5);

  noStroke();
  fill(165,68,130);
  ellipse(531,222, 245, 245);
  
  beginShape();
  vertex(457,126);
  vertex(501,106);
  vertex(489,92);
  vertex(463,100);
  vertex(462,105);
  vertex(466,93);
  vertex(476,95);
  endShape();
  
  ellipse(479,105,30,30);
  
  fill(137,44,104);
  ellipse(477,95,24,16);

}
void mouseClicked(){
  println(mouseX, mouseY);
}
