use <MCAD/boxes.scad>

module hollow_rounded_box_open_top(x,y,z,t=5,color="green") {
    difference() {
        // outer faces, made taller by 2*t because we need to cut it
        color(color, 0.2)
        roundedCube([x,y,z+(2*t)],t/2,0);
        
        // inner faces
        color(color)
        translate([t,t,t])
        roundedCube([x-2*t,y-2*t,z],t/2,0);
        
        translate([-0.5,-0.5,z])
        cube([x+1,y+1,(2*t)+1]);

    };
};
