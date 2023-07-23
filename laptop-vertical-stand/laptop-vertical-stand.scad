width = 240;
laptopThickness = 20;
baseHeight = 5;
wallHeight = 40;
height = baseHeight + wallHeight;
wallThickness = 5;
lockHeight = 15;
lockWidth = 7;
lockDepth = 5;
lockBaseHeight = 3;

union() {
    base();
    leftWall();
    rightWall();
}

module base() {
    cube([width, laptopThickness, baseHeight], center = true);
}

module leftWall() {
    translate([0, -wallThickness / 2, 0]) {
        difference() {
            translate([0, -laptopThickness / 2, wallHeight / 2 - baseHeight]) {
                wall();
            }
            translate([width / 2, -(laptopThickness + wallThickness - lockWidth) / 2, baseHeight]) {
                rotate([90, 0, -90]) {
                    lockSlot();
                }
            }
            translate([width / 2, -(laptopThickness + wallThickness - lockWidth) / 2, baseHeight * 4]) {
                rotate([90, 0, -90]) {
                    lockSlot();
                }
            }
            translate([-width / 2, -(laptopThickness + wallThickness + lockWidth) / 2, baseHeight]) {
                rotate([90, 0, 90]) {
                    lockSlot();
                }
            }
            translate([-width / 2, -(laptopThickness + wallThickness + lockWidth) / 2, baseHeight * 4]) {
                rotate([90, 0, 90]) {
                    lockSlot();
                }
            }
            translate([lockWidth / 2, -(laptopThickness - wallThickness + lockWidth / 2) / 2, height - lockBaseHeight + 1]) {
                rotate([0, 180, 90]) {
                    lockSlot();
                }
            }
            translate([width * 0.25 + lockWidth / 2, -(laptopThickness - wallThickness + lockWidth / 2) / 2, height - lockBaseHeight + 1]) {
                rotate([0, 180, 90]) {
                    lockSlot();
                }
            }
            translate([-width * 0.25 + lockWidth / 2, -(laptopThickness - wallThickness + lockWidth / 2) / 2, height - lockBaseHeight + 1]) {
                rotate([0, 180, 90]) {
                    lockSlot();
                }
            }
        }
    }
}

module rightWall() {
    translate([0, wallThickness / 2, 0]) {
        difference() {
            translate([0, laptopThickness / 2, wallHeight / 2 - baseHeight]) {
                wall();
            }
            translate([width / 2, (laptopThickness + wallThickness + lockWidth) / 2, baseHeight]) {
                rotate([90, 0, -90]) {
                    lockSlot();
                }
            }
            translate([width / 2, (laptopThickness + wallThickness + lockWidth) / 2, baseHeight * 4]) {
                rotate([90, 0, -90]) {
                    lockSlot();
                }
            }
            translate([-width / 2, (laptopThickness + wallThickness - lockWidth) / 2, baseHeight]) {
                rotate([90, 0, 90]) {
                    lockSlot();
                }
            }
            translate([-width / 2, (laptopThickness + wallThickness - lockWidth) / 2, baseHeight * 4]) {
                rotate([90, 0, 90]) {
                    lockSlot();
                }
            }
            translate([lockWidth / 2, (laptopThickness + wallThickness + lockWidth) / 2, height - lockBaseHeight + 1]) {
                rotate([0, 180, 90]) {
                    lockSlot();
                }
            }
            translate([width * 0.25 + lockWidth / 2, (laptopThickness + wallThickness + lockWidth) / 2, height - lockBaseHeight + 1]) {
                rotate([0, 180, 90]) {
                    lockSlot();
                }
            }
            translate([-width * 0.25 + lockWidth / 2, (laptopThickness + wallThickness + lockWidth) / 2, height - lockBaseHeight + 1]) {
                rotate([0, 180, 90]) {
                    lockSlot();
                }
            }
        }
    }
}

module wall() {
    cornerRadius = 10;
    union() {
        cube([width, wallThickness, height - cornerRadius], center = true);
        translate([0, 0, height / 2]) {
            cube([width - cornerRadius * 2, wallThickness, cornerRadius], center = true);
        }
        translate([width / 2 - cornerRadius, 0, (height - cornerRadius) / 2]) {
            rotate([90, 0, 0,]) {
                cylinder(r = cornerRadius, h = wallThickness, center=true, $fn = 2000);
            }
        }
        translate([-width / 2 + cornerRadius, 0, (height - cornerRadius) / 2]) {
            rotate([90, 0, 0,]) {
                cylinder(r = cornerRadius, h = wallThickness, center=true, $fn = 2000);
            }
        }
    }
}

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

module lockSlot() {
    union() {
        lock();
        translate([0, 0, -1]) {
            cube([lockWidth, lockDepth, 1.5]);
        }
    }
}
