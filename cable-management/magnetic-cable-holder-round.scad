bridgeHeight = 3;
additionalStandRadius = 2;

holder(channelWidth = 50, channelHeight = 30, magnetRadius = 10 , magnetHeight = 2);

module holder(channelWidth, channelHeight, magnetRadius, magnetHeight) {
    union() {
        stand(channelHeight, magnetRadius, magnetHeight);
        bridge(channelWidth, channelHeight,  magnetRadius);
        translate([0, channelWidth + magnetRadius * 2 + additionalStandRadius * 2, 0]) {
            stand(channelHeight, magnetRadius, magnetHeight);
        }
    }
}

module stand(channelHeight, magnetRadius, magnetHeight) {
    difference() {
        cylinder(r = magnetRadius + additionalStandRadius, h = channelHeight + bridgeHeight, $fn = 500);
        translate([0, 0, -1]) {
            cylinder(r = magnetRadius , h = magnetHeight + 1, $fn = 500);
        }
    }
}

module bridge(channelWidth, channelHeight, magnetRadius) {
    translate([-magnetRadius - additionalStandRadius, 0, channelHeight]) { 
        cube([magnetRadius * 2 + additionalStandRadius * 2, channelWidth + magnetRadius * 2 + additionalStandRadius * 2, bridgeHeight]);
    }
}