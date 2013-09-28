tkWidth=60;
tkMinHeight=20;
tkDiam=28;
tkThickness=9.5;
tkMaxThickness=10.5;

extraWidth=10;
extraHeight=10;
extraZ=10;

raisedBy=(tkDiam-tkMinHeight)/2;


resize([tkWidth,tkDiam,tkMaxThickness]) {
	minkowski() {
		union() {
			translate([0,tkDiam/2,0])
				cylinder(tkThickness,tkDiam/2,tkDiam/2);
			translate([0,raisedBy,0])
				cube([tkWidth-tkDiam/2,tkMinHeight,tkThickness]);
			translate([0,tkDiam/2,tkThickness])
				cylinder(tkMaxThickness-tkThickness,tkDiam/2,tkDiam/5);
		}
		sphere(1);
	}
}