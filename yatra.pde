float momo1X = random(100, 700);
float momo1Y = 0;

float momo2X = random(100, 700);
float momo2Y = 0;

float momo3X = random(100, 700);
float momo3Y = 0;

float momo4X = random(100, 700);
float momo4Y = 0;

float ySpeed1 = random(3, 10);
float ySpeed2 = random(3, 10);
float ySpeed3 = random(3, 10);

float dalaiLamaY = 700;

int score = 0;
int Health = 100;

PImage momo;
PImage dalaiLama;
PImage sky;

void setup()
{
  size(800, 800);
  momo = loadImage("momo4.png");
  dalaiLama = loadImage("dalailama.png");
  sky = loadImage("tibet.jpg");

  momo.resize(50, 50);
  dalaiLama.resize(100, 100);
  sky.resize(800,800);

  imageMode(CENTER);
}

void draw()
{
  background(sky);
  textSize(25);
  text("Score: " + score, 75, 75);
  text("Health: " + Health, 400, 75);

  image(momo, momo1X, momo1Y);
  momo1Y = momo1Y + ySpeed1;

  image(momo, momo2X, momo2Y);
  momo2Y = momo2Y + ySpeed2;

  image(momo, momo3X, momo3Y);
  momo3Y = momo3Y + ySpeed3;

  image(dalaiLama, mouseX, dalaiLamaY);

  float distance = dist(mouseX, dalaiLamaY, momo1X, momo1Y);
  float distance1 = dist(mouseX, dalaiLamaY, momo2X, momo2Y);
  float distance2 = dist(mouseX, dalaiLamaY, momo3X, momo3Y);
  
   if (distance < 55)
  {
    
    momo1X = random(100, 700);
    momo1Y = 0;
    score = score + 1;
  }

  if (distance1 < 55)
  {
    
    momo2X = random(100, 700);
    momo2Y = 0;
    score = score + 1;
  }
  
   if (distance2 < 55)
  {
   
    momo3X = random(100, 700);
    momo3Y = 0;
    score = score + 1;
  }
  
  if (momo1Y > height)
  {
    
    momo1X = random(100, 700);
    momo1Y = 0;
    Health = Health - 10;
  }

  if (momo2Y > height)
  {
    
    momo2X = random(100, 700);
    momo2Y = 0;
    Health = Health - 10;
  }
  
   if (momo3Y > height)
  {
   
    momo3X = random(100, 700);
    momo3Y = 0;
    Health = Health - 10;
  }
}
