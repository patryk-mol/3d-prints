difference() {
    rotate([0,0,45])
        cylinder(20,30,10,$fn=4);
    translate([0,-50,-1])
        cube([100,100,100]);
}