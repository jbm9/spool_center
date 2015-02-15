use <decorative/moire.scad>;

spool_id = 56.4; // 53 for Peak Green, 37.5 for Monoprice
flange_size = 4;
/*
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
	translate([-15,-3,0])
	cube([20,100,50]);
    }
  }
}
*/

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

intersection() {
rotate([0,0,30]) trimoire(spool_id+flange_size-8, 3, 15, 20, 21);
union() {
translate([0,0,3]) cylinder(r2=5, r1=spool_id/2, h=7-3, $fn=100);
cylinder(r=spool_id/2+flange_size, h=3);
}
}


  }
}
