class Line {

    float x1, y1, x2, y2;
    
    Line(float x1, float y1, float x2, float y2) {
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
        print("Slope: " + (float)((y2 - y1) / (x2 - x1)));
    }

    void display() {
        float dy = y2 - y1, dx = x2 - x1, steps;
        if(Math.abs(dy) > Math.abs(dx))
            steps = Math.abs(dx);
        else
            steps = Math.abs(dy);
        float x_inc = dx / steps, y_inc = dy / steps;
        int x = (int)x1, y = (int)y1;
        set(x, y, 255);
        for(int i = 0; i < steps; i++) {
            x += (int)x_inc;
            y += (int)y_inc;
            set(x, y, 255);
        }
    }
}
