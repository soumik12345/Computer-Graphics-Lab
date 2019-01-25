#include<stdio.h>
#include<conio.h>
#include<graphics.h>

void left_to_right(int r) {
	int x_max = getmaxx(), y_max = getmaxy(), x = 0, y = 0;
	for(x = 0; x < x_max; x++) {
		y = y_max / 2;
		cleardevice();
		setfillstyle(HATCH_FILL, RED); 
		circle(x, y, r);
		floodfill(x, y, WHITE);
		delay(10);
	}
}

void top_to_bottom(int r) {
	int x_max = getmaxx(), y_max = getmaxy(), x = 0, y = 0;
	for(y = 0; y < y_max; y++) {
		x = x_max / 2;
		cleardevice();
		setfillstyle(HATCH_FILL, RED);
		circle(x, y, r);
		floodfill(x, y, WHITE);
		delay(10);
	}
}

void topleft_to_bottomright(int r) {
	float x_max = getmaxx(), y_max = getmaxy(), x = 0, y = 0;
	float m = y_max / x_max;
	for(x = 0; x < x_max; x++) {
		cleardevice();
		setfillstyle(HATCH_FILL, RED); 
		circle(x, y += m, r);
		floodfill(x, y, WHITE);
		delay(10);
	}
}

void bottomleft_to_topright(r) {
	float x_max = getmaxx(), y_max = getmaxy();
	float x = 0, y = y_max;
	float m = y_max / x_max;
	for(x = 0; x < x_max; x++) {
		cleardevice();
		setfillstyle(HATCH_FILL, RED); 
		circle(x, y, r);
		floodfill(x, y -= m, WHITE);
		delay(10);
	}
}

int main() {
	int gdriver = DETECT, gmode, errorcode, r, inp;
	initgraph(&gdriver, &gmode, "c:\\turboc3\\bgi");
	errorcode = graphresult();
	printf("Enter radius of the circle: ");
	scanf("%d", &r);
	printf("Follow the menu to move to circle:\n");
	printf("1. Middle of the left to middle of right\n");
	printf("2. Middle of the top to middle of bottom\n");
	printf("3. Top left to Bottom right\n");
	printf("4. Bottom left to Top Right\n");
	printf("5. Exit\n");
	scanf("%d", &inp);
	if(inp == 1)
		left_to_right(r);
	else if(inp == 2)
		top_to_bottom(r);
	else if(inp == 3)
		topleft_to_bottomright(r);
	else if(inp == 4)
		bottomleft_to_topright(r);
	else
		exit(1);
	getch();
	return 0;
}
