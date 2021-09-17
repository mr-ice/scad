# scadLICENSE

box.scad
    defines hollow_rounded_box_open_top based on MCAD/boxes.scad

move.scad
    defines move which does a translate and rotate together, all with
    named parameters

sector.scad
    defines sector which is a 'wedge' shape out of a circle of certain
    radius and angles

tube.scad
    a tube is a hollow cylinder

utils.scad
    function gp turns a base, top, height and radius into a pair of
    points


    from https://eribuijs.blogspot.com/2017/10/openscad-lists-and-list-manipulation.html
    add_value, partial, insert

    from http://forum.openscad.org/An-HSV-HSB-to-RGB-Color-function-in-OpenSCAD-td9835.html
    doHsvMatrix, hsv


    function midpoint between two points
    
    function midpoint_of calculates midpoint of first and last point in
    list
