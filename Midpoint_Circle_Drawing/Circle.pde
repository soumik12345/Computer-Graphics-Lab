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
        double x = 0, y = r;
        double p = (5 / 4) - r;
        circleSymmetry(x, y, xc, yc);
        while(x <= y) {
            if(p < 0) {
                x++;
                p += (2 * x + 1);
            } else {
                x++;
                y--;
                p += (2 * x - 2 * y + 1);
            }
            circleSymmetry(x, y, xc, yc);
        }
    }
}
