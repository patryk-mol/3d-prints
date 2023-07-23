difference() {
    part();
    cutout();
}

module part() {
    union() {
        translate([0, 5, 0])
            cube([240, 5, 30]);
        translate([20, 0, 0])
            cube([200, 5, 30]);
    }
}

module cutout() {
    translate([92, -1, 10])
        cube([56, 12, 21]);
}
