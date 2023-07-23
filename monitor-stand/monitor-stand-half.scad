depth = 200;

difference() {
    mainStructure();
    cutOff();
}

module mainStructure() {
    union() {
        translate([-130, -depth, 0])
            union() {
                cube([130, 5, 10]);
                translate([0, depth-5, 0])
                    cube([130, 5, 10]);
                cube([5, depth, 70]);
                translate([5, 0, 0])
                    cube([10, depth, 60]);
                translate([125, 0, 0])
                    cube([5, depth, 60]);
            }

        translate([-135, -320, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }

        translate([-135, -300, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }

        translate([-135, -280, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -260, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -240, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -220, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        
    translate([-135, -200, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
    translate([-135, -180, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
    translate([-135, -160, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -140, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -120, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -100, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -80, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -60, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -40, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -20, 0])
            rotate(a=[0,0,45]) {
                cube([190, 5, 5]);
            }

        translate([-135, 0, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }

        translate([-135, 20, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }

        translate([-135, 40, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, 60, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, 80, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, 100, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -200, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -180, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -160, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -140, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -120, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -100, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -80, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -60, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -40, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
        
        translate([-135, -20, 0])
            rotate(a=[0,0,-45]) {
                cube([190, 5, 5]);
            }
    }
}

module cutOff() {
    translate([-150, -depth*2, 0])
        difference() {
            translate([0, 0, -5])
                cube([160, depth*3, 75]);
            translate([20, 200, -10])
                cube([130, depth, 100]);
        }
}