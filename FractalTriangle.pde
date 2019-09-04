PVector a;
PVector b;
PVector c;

void setup() {
  size(800, 800);
  a = new PVector(50, height - 100);
  b = new PVector(width/2, height - 100 - 350 * sqrt(3));
  c = new PVector(width - 50, height - 100);
}




void draw() {
  background(0);
  stroke(255);

  createTri(a, b, c);
}


void createTri(PVector a, PVector b, PVector c) {
  noFill();
  if (abs(a.x - b.x) > 2 && abs(b.x - c.x) > 2 && abs(c.x - a.x) > 2) {
    triangle(a.x, a.y, b.x, b.y, c.x, c.y);

    PVector na = new PVector((a.x + b.x) / 2, (a.y + b.y) / 2);
    PVector nb = new PVector((b.x + c.x) / 2, (b.y + c.y) / 2);
    PVector nc = new PVector((c.x + a.x) / 2, (c.y + a.y) / 2);
    createTri(na, nb, nc);
    createTri(new PVector((na.x + b.x) / 2, (na.y + b.y) / 2), new PVector((b.x + nb.x) / 2, (b.y + nb.y) / 2), new PVector((nb.x + na.x) / 2, (nb.y + na.y) / 2));
    createTri(new PVector((na.x + a.x) / 2, (na.y + a.y) / 2), new PVector((a.x + nc.x) / 2, (a.y + nc.y) / 2), new PVector((nc.x + na.x) / 2, (nc.y + na.y) / 2));
    createTri(new PVector((c.x + nc.x) / 2, (c.y + nc.y) / 2), new PVector((nc.x + nb.x) / 2, (nc.y + nb.y) / 2), new PVector((nb.x + c.x) / 2, (nb.y + c.y) / 2));
  }
}
