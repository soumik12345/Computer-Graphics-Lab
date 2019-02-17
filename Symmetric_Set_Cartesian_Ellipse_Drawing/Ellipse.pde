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
        if(rx > ry) {
            for(double x = 0; x <= rx; x++) {
                double y = ry * Math.sqrt(1 - Math.pow((x / rx), 2));
                ellipseSymmetry(x, y, rx, ry);
            }
        } else {
            for(double y = 0; y <= ry; y++) {
                double x = rx * Math.sqrt(1 - Math.pow((y / ry), 2));
                ellipseSymmetry(x, y, rx, ry);
            }
        }
    }
}
