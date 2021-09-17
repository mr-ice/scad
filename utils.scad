// Given a base size, a top size, and a height (same parameters as our bezier solid), generate
// the two points for our base and height.
function gp(b, t, h, r) = concat( [[b,0]], [[t,h]] );


// add_value, partial, insert from https://eribuijs.blogspot.com/2017/10/openscad-lists-and-list-manipulation.html

// Simple append element to list
function add_value(list, elem) = concat(list,elem);

// Simple list slice
function partial(list,start,end) = [for (i = [start:end]) list[i]];

// insert a new value into the middle of a list
function insert(list,value,position) = let (l1 = partial(list,0,position-1), l2 = partial(list,position,len(list)-1)) concat(add_value(l1,value),l2);

// doHsvMatrix and hsv from http://forum.openscad.org/An-HSV-HSB-to-RGB-Color-function-in-OpenSCAD-td9835.html
function doHsvMatrix(h,s,v,p,q,t,a=1)=[h<1?v:h<2?q:h<3?p:h<4?p:h<5?t:v,h<1?t:h<2?v:h<3?v:h<4?q:h<5?p:p,h<1?p:h<2?p:h<3?t:h<4?v:h<5?v:q,a];

function hsv(h, s=1, v=1,a=1)=doHsvMatrix((h%1)*6,s<0?0:s>1?1:s,v<0?0:v>1?1:v,v*(1-s),v*(1-s*((h%1)*6-floor((h%1)*6))),v*(1-s*(1-((h%1)*6-floor((h%1)*6)))),a);

// Given any two points, return a midpoint
function midpoint(A, B) = let (
    ax = A[0],
    ay = A[1],
    bx = B[0],
    by = B[1],
    xm = abs(ax - bx)/2,
    ym = abs(ay - by)/2
    ) [min(ax,bx) + xm, min(ay,by) + ym];
    
// given a list of points, return the midpoint between
// the first and last point.
function midpoint_of(l) = midpoint(l[0], l[len(l)-1]);
