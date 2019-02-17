class Circle {

    double xc, yc, r;

    Circle(double xc, double yc, double r) {
        this.xc = xc;
        this.yc = yc;
        this.r = r;
    }

    void display() {
        for(double theta = 0; theta <= 360; theta++) {
            double x = xc + r * Math.cos(theta * (3.141 / 180));
            double y = yc + r * Math.sin(theta * (3.141 / 180));
            set((int)x, (int)y, 0);
        }
    }
}
