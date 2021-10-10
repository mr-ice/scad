include <move.scad>

// This is a simple tube (a cylinder with a cylindrical hollow)

// tube(h, od, id)
// h = height of the tube 
// od = 2*or = outer radius
// id = 2*ir = inner radius
// $fn = obeys face numbers

module tube(h, od, id, $fn=$fn)
{
    difference()
    {
        cylinder(h, od/2, od/2);
        
        translate([0,0,-0.5])
        cylinder(h+1, id/2, id/2);
    };
};


tube(7, 4, 1.9, $fn=36);
