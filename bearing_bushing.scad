// bushing for the bearing center, to put it over the wire more easily


use <MCAD/bearing.scad>;


difference() {
  cylinder(r=5, h=8);
  translate([0,0,1]) bearing();
  translate([0,0,-1]) cylinder(r=2.3, h=10);
}

