union() {
    translate([0, 0, 5])
        cube([5, 10, 16]);
    translate([0, 0, 21])
        cube([56, 5, 30]);
    translate([0, 5, 21])
        cube([36, 5, 30]);
    cube([10, 10, 5]);
}