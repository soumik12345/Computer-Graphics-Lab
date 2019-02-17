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
        for(double theta = 45; theta <= 90; theta++) {
            double x = r * Math.cos(theta * (3.141 / 180));
            double y = r * Math.sin(theta * (3.141 / 180));
            circleSymmetry(x, y, xc, yc);
        }
    }
}
