class Ellipse {

    double xc, yc, rx, ry;

    Ellipse(double xc, double yc, double rx, double ry) {
        this.xc = xc;
        this.yc = yc;
        this.rx = rx;
        this.ry = ry;
    }

    void ellipseSymmetry(double x, double y, double xc, double yc) {
        set((int)(xc + x), (int)(yc + y), 0);
        set((int)(xc - x), (int)(yc + y), 0);
        set((int)(xc - x), (int)(yc - y), 0);
        set((int)(xc + x), (int)(yc - y), 0);
    }

    void display() {
        for(double theta = 0; theta <= 90; theta++) {
            double x = rx * Math.cos(theta * (3.141 / 180));
            double y = ry * Math.sin(theta * (3.141 / 180));
            ellipseSymmetry(x, y, xc, yc);
        }
    }
}
