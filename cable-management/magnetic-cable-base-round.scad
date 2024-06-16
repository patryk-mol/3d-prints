padding = 2;
heightPadding = 1;

base(channelWidth = 30, magnetRadius = 5, magnetHeight = 2, screwSize = 1.5, screwHeadRadius = 2.5);

module base(channelWidth, magnetRadius, magnetHeight, screwSize, screwHeadRadius) {
    difference() {
        union() {
            magnetSlot(magnetRadius, magnetHeight);
            bridge(channelWidth, magnetRadius, magnetHeight);
            translate([0, channelWidth + magnetRadius, 0]) {
                magnetSlot(magnetRadius, magnetHeight);
            }
        }
        translate([0, 0, -1]) {
            cylinder(r = magnetRadius , h = magnetHeight + 1, $fn = 500);
            translate([0, channelWidth + magnetRadius, 0]) {
                cylinder(r = magnetRadius , h = magnetHeight + 1, $fn = 500);
            }
        }
        translate([0, magnetRadius + padding + 2, 0]) {
            screwCutout(screwSize, screwHeadRadius, magnetHeight);
        }
        translate([0, channelWidth - padding - 2, 0]) {
            screwCutout(screwSize, screwHeadRadius, magnetHeight);
        }
    }
}

module magnetSlot(magnetRadius, magnetHeight) {
    cylinder(r = magnetRadius + padding, h = magnetHeight + heightPadding, $fn = 500);
}

module bridge(channelWidth, magnetRadius, magnetHeight) {
    translate([-magnetRadius - padding, 0, 0]) { 
        cube([magnetRadius * 2 + padding * 2, channelWidth + magnetRadius, magnetHeight + heightPadding]);
    }
}

module screwCutout(screwSize, screwHeadRadius, magnetHeight) {
    cylinder(h = screwHeadRadius * 2, r1 = 0, r2 = screwHeadRadius, $fn = 500);
    translate([0, 0, -1]) {
        cylinder(r = screwSize / 2.0, h = magnetHeight + heightPadding * 2, $fn = 500);
    }
}