class Circle {

    double xc, yc, r;

    Circle(double xc, double yc, double r) {
        this.xc = xc;
        this.yc = yc;
        this.r = r;
    }

    void display() {
        for(double x = xc - r; x <= xc + r; x++) {
            double y1 = yc + Math.sqrt((r * r) - ((x - xc) * (x - xc)));
            double y2 = yc - Math.sqrt((r * r) - ((x - xc) * (x - xc)));
            set((int)x, (int)y1, 0);
            set((int)x, (int)y2, 0);
        }
    }
}