union() {
    difference() {
        cube([200, 150, 10], center = true);
        cube([180, 130, 12], center = true);
    }
    cube([10, 150, 10], center = true);
    cube([200, 10, 10], center = true);
    rotate([0, 0, 36])
        cube([230, 10, 10], center = true);
    rotate([0, 0, -36])
        cube([230, 10, 10], center = true);
    difference() {
        translate([0, -25, 0])
            rotate([0, 0, 45])
                cylinder(10, 155, 145, center = true, $fn=4);
        translate([0, -50, 0])
            cube([230, 250, 12], center = true);
        translate([-115, 74, -6])
            cube([15, 15, 12]);
        translate([100, 74, -6])
            cube([15, 15, 12]);
    }
    translate([0, -79.5, -3])
        cube([200, 9, 4], center = true);
}
