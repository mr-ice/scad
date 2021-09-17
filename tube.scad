include <move.scad>

// This is a simple tube (a cylinder with a cylindrical hollow)


module tube(h, od, id)
// h = height of the tube (will be around the z axis)
// or = outer radius
// ir = inner radius
// $fn = obeys face numbers
{
    difference()
    {
        cylinder(h, od/2, od/2);
        
        translate([0,0,-0.5])
        cylinder(h+1, id/2, id/2);
    }
}