lockHeight = 15;
lockWidth = 7;
lockDepth = 5;
lockBaseHeight = 3;

lock();

module lock() {
    boltRadius = 1;
    cube([lockWidth, lockDepth, lockBaseHeight]);
    translate([1.5, lockDepth / 2, 0]) {
        cylinder(h = lockHeight, r = boltRadius, $fn=100);
    }
    translate([5.5, lockDepth / 2, 0]) {
        cylinder(h = lockHeight, r = boltRadius, $fn=100);
    }
}