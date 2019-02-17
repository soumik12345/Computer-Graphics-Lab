class Ellipse {

    double xc, yc, rx, ry;

    Ellipse(double xc, double yc, double rx, double ry) {
        this.xc = xc;
        this.yc = yc;
        this.rx = rx;
        this.ry = ry;
    }

    void display() {
        if(rx > ry) {
            for(double x = xc - rx; x <= xc + rx; x++) {
                double y1 = yc + ry * Math.sqrt(1 - Math.pow(((x - xc) / rx), 2));
                double y2 = yc - ry * Math.sqrt(1 - Math.pow(((x - xc) / rx), 2));
                set((int)x, (int)y1, 0);
                set((int)x, (int)y2, 0);
            }
        } else {
            for(double y = yc - ry; y <= yc + ry; y++) {
                double x1 = xc + rx * Math.sqrt(1 - Math.pow(((y - yc) / ry), 2));
                double x2 = xc - rx * Math.sqrt(1 - Math.pow(((y - yc) / ry), 2));
                set((int)x1, (int)y, 0);
                set((int)x2, (int)y, 0);
            }
        }
    }
}
