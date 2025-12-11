// characteristic mesh parameters
r = 5e5;
c1 = 0.9e5;
// points for the half circle
Point(1) = {0, 0, 1,c1};
Point(2) = {0, r, 0,c1};
Point(3) = {r, 0, 0,c1};
Point(4) = {0, -r, 0,c1};
Point(5) = {-r, 0, 0,c1};
Circle(1) = {3, 1, 2};
//+
Circle(2) = {2, 1, 5};
//+
Circle(3) = {5, 1, 4};
//+
Circle(4) = {4, 1, 3};
//+
Curve Loop(1) = {2, 3, 4, 1};
//+
Plane Surface(1) = {1};




Field[1] = MathEval;
Field[1].F = "20000 - 15000 * Exp(-1 * (((x*x+y*y)^0.5 - 320000) / 200000)^2)";
Background Field = 1;

Recombine Surface{1};
