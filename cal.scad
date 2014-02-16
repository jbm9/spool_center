wallX = 0.6;
wallY = 0.4;
wallZ = 0.3;

dX = 10;
dY = 10;
dZ = 5;

difference() {
cube([dX, dY, dZ]);
translate([wallX, wallY, wallZ]) cube([dX-2*wallX, dY-2*wallY, dZ]);
}