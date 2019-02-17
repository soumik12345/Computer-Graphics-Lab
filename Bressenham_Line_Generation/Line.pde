class Line {

    float x1, y1, x2, y2, m;
    
    Line(float x1, float y1, float x2, float y2) {
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
        this.m = (float)((y2 - y1) / (x2 - x1));
        print("Slope: " + m);
    }

    void display() {
        float dx = x2 - x1, dy = y2 - y1;
        float p = 2 * dy - dx;
        for(float x = x1, y = y1; x < x2; x++) {
            set((int)x, (int)y, 0);
            p += 2 * dy;
            if(p >= 0) {
                y++;
                p -= 2 * dx;
            }
        }
    }
}