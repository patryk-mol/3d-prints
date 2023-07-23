width = 240;
baseHeight = 3;
wallHeight = 40;
height = baseHeight + wallHeight;
wallThickness = 5;

stand([20, 20, 20, 20, 30, 30], [0, 25, 50, 75, 105, 140]);

module stand(laptopThicknesses, offsets) {
    for (i = [0 : len(laptopThicknesses) - 1]) {
        translate([0, offsets[i], 0]) {
            offset = offset + laptopThicknesses[i];
            segment(laptopThicknesses[i]);
        }
    }
}

module segment(laptopThickness) {
    union() {
        base(laptopThickness);
        leftWall(laptopThickness);
        rightWall(laptopThickness);
    }
}

module base(laptopThickness) {
    cube([width, laptopThickness, baseHeight], center = true);
}

module leftWall(laptopThickness) {
    translate([0, -wallThickness / 2, 0]) {
        translate([0, -laptopThickness / 2, wallHeight / 2]) {
            wall();
        }
    }
}

module rightWall(laptopThickness) {
    translate([0, wallThickness / 2, 0]) {
        translate([0, laptopThickness / 2, wallHeight / 2]) {
            wall();
        }
    }
}

module wall() {
    intersection() {
        cube([width, wallThickness, height], center = true);
        translate([0, 0, -width * 0.94 + 0.25]) {
            rotate([90, 0, 0,]) {
                cylinder(r = width, h = wallThickness, center=true, $fn = 3000);
            }
        }
    }
}
