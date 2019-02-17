Circle circle;

void setup() {
    size(800, 600);
    circle = new Circle(300, 200, 100);
}

void draw() {
    background(255);
    circle.display();
}
