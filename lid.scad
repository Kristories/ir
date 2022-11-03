w = 63;
l = 22;
h = 16;
t = 2;

module lid() {
    g = 0.2;
    difference() {
        cube([w+4*t, l+4*t, t+3]);
        translate([t-g, t-g, t]) cube([w+2*t+2*g, l+2*t+2*g, t+3]);
        hull() {
            translate([l/2+2*t, l/2+2*t, 0]) cylinder(d=21, h=5);
            translate([w+4*t-l/2-2*t, l/2+2*t, 0]) cylinder(d=21, h=5);
        }
    }
}

lid();