padding = 2;
heightPadding = 1;
outerScrewPadding = 3;

base(channelWidth = 50, magnetRadius = 10, magnetHeight = 2, screwSize = 2, screwHeadRadius = 4);

module base(channelWidth, magnetRadius, magnetHeight, screwSize, screwHeadRadius) {
    difference() {
        plate(channelWidth = channelWidth, magnetRadius = magnetRadius, magnetHeight = magnetHeight, screwHeadRadius = screwHeadRadius);
        translate([0, -channelWidth / 2 - magnetRadius - padding, heightPadding / 2]) {
            magnetCutout(magnetRadius = magnetRadius, magnetHeight = magnetHeight);
        }
        translate([0, channelWidth / 2 + magnetRadius + padding, heightPadding / 2]) {
            magnetCutout(magnetRadius = magnetRadius, magnetHeight = magnetHeight);
        }
        screwCutout(screwSize = screwSize, screwHeadRadius = screwHeadRadius, magnetHeight = magnetHeight);
        translate([0, -channelWidth / 2 - magnetRadius * 2 - padding - outerScrewPadding - screwHeadRadius / 2, 0]) {
            screwCutout(screwSize = screwSize, screwHeadRadius = screwHeadRadius, magnetHeight = magnetHeight);
        }
        translate([0, channelWidth / 2 + magnetRadius * 2 + padding + outerScrewPadding + screwHeadRadius / 2, 0]) {
            screwCutout(screwSize = screwSize, screwHeadRadius = screwHeadRadius, magnetHeight = magnetHeight);
        }
    }
}

module plate(channelWidth, magnetRadius, magnetHeight, screwHeadRadius) {
    union() {
        cube([magnetRadius * 2 + padding * 2, channelWidth + magnetRadius + padding * 2 + (screwHeadRadius + outerScrewPadding) * 4, magnetHeight + heightPadding], center = true);
        translate([0, -channelWidth / 2 - magnetRadius / 2 - padding - (screwHeadRadius + outerScrewPadding) * 2, 0]) {
            cylinder(r = magnetRadius + padding, h = magnetHeight + heightPadding, $fn = 500, center = true);
        }
        translate([0, channelWidth / 2 + magnetRadius / 2 + padding + (screwHeadRadius + outerScrewPadding) * 2, 0]) {
            cylinder(r = magnetRadius + padding, h = magnetHeight + heightPadding, $fn = 500, center = true);
        }
    }
}

module magnetCutout(magnetRadius, magnetHeight) {
    cylinder(r = magnetRadius, h = magnetHeight, center = true, $fn = 500);
}

module screwCutout(screwSize, screwHeadRadius, magnetHeight) {
    rotate([0, 180, 0]) {
        union() {
            translate([0, 0, (magnetHeight + heightPadding - screwHeadRadius) / 2]) {
                cylinder(h = screwHeadRadius, r1 = 0, r2 = screwHeadRadius, center = true, $fn = 500);
            }
            cylinder(r = screwSize, h = magnetHeight + heightPadding, center = true, $fn = 500);
        }
    }
}