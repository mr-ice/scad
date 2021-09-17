// move does a translate and rotate, but with named
// parameters so you can just focus on the one thing you need.
module move(x=0,y=0,z=0,rx=0,ry=0,rz=0)
{ translate([x,y,z])rotate([rx,ry,rz]) children(); }