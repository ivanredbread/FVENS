refine = 1;

h = 0.2/refine;

Point(1) = {0, 0, 0, h};
Point(2) = {1, 0, 0, h};
Point(3) = {1, 1, 0, h};
Point(4) = {0, 1, 0, h};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Line Loop(6) = {1, 2, 3, 4};
Plane Surface(6) = {6}; Recombine Surface{6};
Physical Line(2) = {1, 2, 3, 4};
Physical Surface(7) = {6};

Color Black{ Surface{6}; }
