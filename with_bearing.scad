spool_id = 37.5; // 53 for Peak Green, 37.5 for Monoprice
flange_size = 6;

intersection() {

difference() {
  union() {
    cylinder(h=2, r=(spool_id+2*flange_size)/2);
    cylinder(h=7, r=spool_id/2);

  }

  translate([0,0,-1])
    cylinder(h=20, r=22/2, $fn=30);
}

 union() {
    cylinder(h=13, r=28/2);

    for (i = [0,120,240]) {
      rotate([0,0,i])
      translate([-14,0,0])
	cube([20,100,50]);
    }

    // removed this ring because it allows us to fit this two-up on
    // the Simple
    /*    difference() {
      cylinder(h=2, r=65/2);
      cylinder(h=10, r=53/2);
      } */

 }
}
