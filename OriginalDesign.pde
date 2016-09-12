//Nina Huczko
//Original Design
//September 12,2016
float sunY = 0;
float sunW = 200;
float sunL = 200;
float backgroundRed = 83;
float backgroundGreen = 180;
float backgroundBlue = 216;
float moonY = -400;
void setup()
{
  size(800,800);
}
void draw()
{
  sky();
  sun();
  hills();
  tree();
  sunY = sunY+1;
  sunW = sunW+.5;
  sunL = sunL+.5;
  backgroundRed = backgroundRed+.1;
  backgroundGreen = backgroundGreen-1;
  backgroundBlue = backgroundBlue-1;
 if (sunY >920 && moonY <= 150)
 {
   backgroundRed = backgroundRed - 5;
   backgroundGreen = backgroundGreen - 1;
   backgroundBlue = backgroundBlue - 1;
   hills();
   tree();
   moon();
   moonY = moonY + 1;
   stars();
}
moon();

}
  void sky()
  {
  background(backgroundRed,backgroundGreen,backgroundBlue);
  }
  void hills()
  {
  noStroke();
  fill(#053904);
  ellipse (0,1000,1200,1000);
  fill(#086407);
  ellipse(800,1000,1200,1000);
  }
  void sun()
  {
  noStroke();
  fill(#FAE62B);
  ellipse(400,sunY,sunW,sunL);
  }
  void moon()
  {
    noStroke();
    fill(#CEC6C7);
    arc(400,moonY,200,200,HALF_PI, PI+HALF_PI, CHORD);
  }
   void stars()
  {
    stroke(#CEC6C7);
    strokeWeight(10);
    point(40,40);
    point(140,140);
    point(240,40);
    point(340,140);
    point(440,40);
    point(540,140);
    point(640,40);
    point(740,140);
    point(40,240);
    point(240,240);
    point(440,240);
    point(640,240);
   
  }
  void tree()
  {
    fill(#552727);
    rect(70,700,70,100);
    rect(700,700,70,100);
    fill(#0E2C02);
    rect(35,620,140,80);
    rect(665,620,140,80);
    fill(#270406);
    ellipse(735,740,20,40);
    triangle(100,740,80,760,120,760);
  }
 
