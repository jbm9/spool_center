$fn=20;

spoolID = 38; // inner diameter of spool hole
spoolT = 15;
spoolFlange = 8; // 
spoolFlangeT = 2;

barW = 27;
barD = 10;

screwD = 2.5;


difference() {
  union() {
    cylinder(r=(spoolID/2)+spoolFlange, h=spoolFlangeT);

    cylinder(r=spoolID/2, h=spoolFlangeT+spoolT);
  }



  translate([0,0,-0.5])
    cube([barW, barD, 10*spoolT+1], center=true);



# translate([0,spoolID/2+1,spoolFlangeT+spoolT-5]) 
  rotate([90,-90,0])  {
    union() {
      translate([0,0,-1]) cylinder(r=6/2, h=3);
      translate([0,0,-1]) cylinder(r=screwD/2, h=spoolID+3, $fn=17);
      translate([0,0,spoolID-2]) cylinder(r=6/2, h=3);
    }
  }

}

// # translate([8, 26.5, 13.25]-[27,27,0]) cube ([1,1,100]);
