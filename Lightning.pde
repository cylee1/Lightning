int startX = -1;
int startY = 20;
int endX = -1;
int endY = 20;

void setup()
{
	size(300,200);
	background(0);
	stroke(20,40,70);
	fill(20,40,70,100);
	rect(0,0,300,200);
	noLoop();
}

void draw()
{
	stroke(190,190,190);
	while(endX < 310)
		{
			line(startX, startY, endX, endY);
			startX = endX;
			startY = endY;
			endX = startX + (int)(Math.random()*9)+1;
			endY = startY + (int)(Math.random()*18)-9;
		}
}

void mouseClicked()
{
	redraw();
	startX = -1;
	startY = (int)(Math.random()*200)+1;
	endX = -1;
	endY = (int)(Math.random()*200)+1;
}
