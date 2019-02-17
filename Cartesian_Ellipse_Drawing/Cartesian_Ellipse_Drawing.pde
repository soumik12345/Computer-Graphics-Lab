Ellipse ellipse;

void setup() {
    size(800, 600);
    ellipse = new Ellipse(400, 300, 300, 100);
}

void draw() {
    background(255);
    ellipse.display();
}
