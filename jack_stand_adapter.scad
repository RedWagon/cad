groove=10;
groove_h=37;
// how wide the stand is
stand=26;

// flat section at top of the stand
platform=75;
// rounded part
cup_w=43;
cup_h=15*2;
// bottom groove in jack stand
bottom_groove=10;

pad=0.1;
padd=pad*2;

wall=5;
walll=wall*2;
$fn=200;

module positive() {
    difference() {
        union() {
            scale([1,1,cup_h/cup_w])
            rotate([0,90,0])
            cylinder(d=cup_w,h=stand);

            translate([-wall,0,0])
            rotate([0,90,0])
            cylinder(d2=platform,d1=platform-walll,h=wall);

            translate([stand,0,0])
            rotate([0,90,0])
            cylinder(d1=platform,d2=platform-walll,h=wall);
        }
        translate([-pad-wall,-platform/2,pad])
        cube([stand+walll+padd,platform,cup_w]);
    }
    translate([-wall,-platform/2,0])
    cube([stand+walll,platform,groove_h-cup_h/2-bottom_groove/2]);
}

difference() {
    positive();
    translate([-pad-wall,-groove/2,-cup_h/2-bottom_groove/2])
    cube([stand+walll+padd,groove,groove_h+pad]);
}