function drawClock(t,center,r,color,lineColor)
global SCREEN
global GL

if nargin < 1
    t=0;
end
if nargin<2
    center = SCREEN.center;
end
if nargin<3
    r=10;
end
if nargin<4
    color = [1 1 1];
end
if nargin<5
    lineColor = [1 0 0];
end

% draw circle
glClearColor(0,0,0,0);
glColor3f(color(1),color(2),color(3));
glBegin(GL.POLYGON);
l=2*pi*r;
for i = 1:l
    glVertex2f(center(1)+r*cos(2*pi*i/l),center(2)+r*sin(2*pi*i/l));
end
glEnd()

glClearColor(0,0,0,0);
glColor3f(0,0,0);
glBegin(GL.POLYGON);
l=2*pi*r;
for i = 1:l
    glVertex2f(center(1)+(r/10*9)*cos(2*pi*i/l),center(2)+r/10*9*sin(2*pi*i/l));
end
glEnd()

% draw pointer
glClearColor(0,0,0,0);
glLineWidth(3)
glColor3f(lineColor(1),lineColor(2),lineColor(3));
glBegin(GL.LINES);

glVertex2f(center(1),center(2));
point = center+[r*cos(pi/2-2*pi*t),-r*sin(pi/2-2*pi*t)];
glVertex2f(point(1),point(2));
glEnd();

% draw markers
glClearColor(0,0,0,0);
glColor3f(color(1),color(2),color(3));
glBegin(GL.LINES);
mark = [0 1/4 1/2 3/4];
for i = 1:length(mark)
    point1 = center+[r*cos(pi/2-2*pi*mark(i)),-r*sin(pi/2-2*pi*mark(i))];
    point2 = center+[(r/5*4)*cos(pi/2-2*pi*mark(i)),-(r/5*4)*sin(pi/2-2*pi*mark(i))];
    glVertex2f(point1(1),point1(2));
    glVertex2f(point2(1),point2(2));
end
glEnd();
end