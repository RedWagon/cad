center_screw=3.5; // guess
corner_screw=2.5; // guess
thru_gap=4;

zero=0.0001;

stand_tip=1; // extra diameter to add to stands
stand_base=stand_tip+thru_gap;

center_tip=center_screw+stand_tip;
center_base=center_screw+stand_base;
corner_tip=corner_screw+stand_tip;
corner_base=corner_screw+stand_base;

board_gap=0.5;

// https://www.amazon.com/ElectroCookie-Solderable-Breadboard-Electronics-Gold-Plated/dp/B07ZV8FWM4?th=1

board_x=38.1; // manufacturers specs
board_y=50.8; // manufacturers specs
board_z=1.6; // vernier

corner_x=31.8; // manufacturers specs
corner_y=44.5; // manufacturers specs

center_y=40.6; // manufacturers specs

board_corner=(board_x-corner_x)/2;

wall=0.5;
base=wall;
side=wall;

$fn=90;

total_z=base+thru_gap+board_z;

pad=0.1;

// these are halved for some reason
//top_chamfer=side*1.5;
bottom_chamfer=0.5;
top_chamfer=0.5;

module dirror_y(y=0) {
    children();
    translate([0,y])
    mirror([0,1])
    children();
}


module dirror_x(x=0) {
    children();
    translate([x,0])
    mirror([1,0])
    children();
}

module board(extra=0) {
    offset(board_corner+extra*2)
    offset(-board_corner)
    square([board_x,board_y],center=true);
}

module place_center() {
    dirror_y()
    translate([0,center_y/2])
    children();
}

module place_corner() {
    dirror_y()
    dirror_x()
    translate([corner_x/2,corner_y/2])
    children();
}

module outer_body() {
    hull() {
        translate([0,0,bottom_chamfer])
        linear_extrude(height=total_z-top_chamfer-bottom_chamfer)
        board(board_gap+side);

        linear_extrude(height=zero)
        board(board_gap+side-bottom_chamfer/2);

        translate([0,0,total_z-zero])
        linear_extrude(height=zero)
        board(board_gap+side-top_chamfer/2);
    }
}

module body() {
    difference() {
        outer_body();

        translate([0,0,base])
        linear_extrude(height=total_z)
        board(board_gap);
    }

    place_center()
    translate([0,0,base])
    cylinder(d2=center_tip,d1=center_base,h=thru_gap);

    place_corner()
    translate([0,0,base])
    cylinder(d2=corner_tip,d1=corner_base,h=thru_gap);
}

difference() {
    body();
    place_center()
    translate([0,0,-pad])
    cylinder(d=center_screw,h=total_z+pad*2);

    place_corner()
    translate([0,0,-pad])
    cylinder(d=corner_screw,h=total_z+pad*2);
}