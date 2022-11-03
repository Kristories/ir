$fa = 5;
$fs = 0.2;

di_m4_t = 3.6;
di_m4_d = 4.4;
di_m4_nut = 8.5;
di_m2_t = 1.8;

w = 63;
l = 22;
h = 16;
t = 2;
led_stand = 1;
p = 2.5;

module lcase() {
    difference() {
        union() {
            difference() {
                cube([w+2*t, l+2*t, h+t+led_stand+p]);
                translate([t, t, t]) cube([w, l, h+t+led_stand+p]);
            }
            translate([w/2+t, l/2+t, 0]) {
                translate([-20, 0, 0]) cylinder(d=10, h=t+led_stand);
                translate([20, 0, 0]) cylinder(d=10, h=t+led_stand);
                translate([0, 0, (t+led_stand)/2]) cube([14, l, t+led_stand], center=true);
            }
            translate([w/2+t, 0, 1.5])
            hull() {
                translate([0, -5, 0]) cube([35, 10, 3], center=true);
                translate([0, 1, 10]) cube([35, 1, 14], center=true);
                
            }
        }
        translate([w/2+t, l/2+t, 1]) {
            translate([-4, 13.5/2, 0]) cylinder(d=2, h=10);
            translate([4, 13.5/2, 0]) cylinder(d=2, h=10);
            translate([4, -13.5/2, 0]) cylinder(d=2, h=10);
            translate([-4, -13.5/2, 0]) cylinder(d=2, h=10);
            
        }
        translate([t/2, t/2, h+t+p])
        cube([w+t, l+t, p*2]);
        
        // 
        translate([w/2+t-31/2, -10, 3])
        cube([31, 10, 30]);
        
        // screw holes
        translate([w/2+t-16/2, -5, 0])
        cylinder(d=di_m4_d, h=4);
        translate([w/2+t+16/2, -5, 0])
        cylinder(d=di_m4_d, h=4);
        
        // Cable holes
        translate([w/2+t, 10, 6])
        rotate([-90, 0, 0])
        cylinder(d=5, h=30);
    }
}

lcase();