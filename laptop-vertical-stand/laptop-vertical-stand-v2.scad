width = 240;
baseHeight = 5;
wallHeight = 40;
height = baseHeight + wallHeight;
wallThickness = 10;

stand([20, 20, 20, 20, 30, 30], [0, 30, 60, 90, 125, 165]);

module stand(laptopThicknesses, offsets) {
    offset = 0;
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
    cornerRadius = 15;
    translate([0, 0, -7.5]) { 
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
}
