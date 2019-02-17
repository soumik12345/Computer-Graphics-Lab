Line line;

void setup() {
    size(800, 600);
    line = new Line(100, 200, 500, 400);
}

void draw() {
    background(255);
    line.display();
}