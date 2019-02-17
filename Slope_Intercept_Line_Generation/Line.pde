class Line {

    float x1, y1, x2, y2;
    
    Line(float x1, float y1, float x2, float y2) {
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
    }

    void display() {
        float dy = y2 - y1;
        float dx = x2 - x1;
        float m = dy / dx;
        float c = y1 - m * x1;

        // Case 1: m <= 1
        if(m <= 1) {
            for(float x = x1; x <= x2; x++) {
                float y = m * x + c;
                set((int)x, (int)y, 0);
            }
        }

        // Case 2: m > 1
        else {
            for(float y = y1; y <= y2; y++) {
                float x = (y - c) / m;
                set((int)x, (int)y, 0);
            }
        }
    }
}