class Circle {

    double xc, yc, r;

    Circle(double xc, double yc, double r) {
        this.xc = xc;
        this.yc = yc;
        this.r = r;
    }

    void circleSymmetry(double x, double y, double xc, double yc) {
        set((int)(xc + x), (int)(yc + y), 0);
        set((int)(xc + y), (int)(yc + x), 0);
        set((int)(xc + y), (int)(yc - x), 0);
        set((int)(xc + x), (int)(yc - y), 0);
        set((int)(xc - x), (int)(yc - y), 0);
        set((int)(xc - y), (int)(yc - x), 0);
        set((int)(xc - y), (int)(yc + x), 0);
        set((int)(xc - x), (int)(yc + y), 0);
    }

    void display() {
        for(double x = 0; x <= yc / 2; x++) {
            double y = Math.sqrt(r * r - x * x);
            circleSymmetry(x, y, xc, yc);
        }
    }
}
