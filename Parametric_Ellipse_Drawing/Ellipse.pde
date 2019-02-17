class Ellipse {

    double xc, yc, rx, ry;

    Ellipse(double xc, double yc, double rx, double ry) {
        this.xc = xc;
        this.yc = yc;
        this.rx = rx;
        this.ry = ry;
    }

    void display() {
        for(double theta = 0; theta <= 360; theta++) {
            double x = xc + rx * Math.cos(theta * (3.141 / 180));
            double y = yc + ry * Math.sin(theta * (3.141 / 180));
            set((int)x, (int)y, 0);
        }
    }
}
