//convert mm to in
in=25.4;                                //fixed

//used to pad negative shapes for cleaner drawings
pad=1.5;                                //arbitrary
padd=pad*2;                             //derived

//gap in between two routed edges
cut_edge_gap=1/16*in;                   //arbitrary
cut_edge_gapp=cut_edge_gap*2;           //derived

//gap in between a routed edge and the flat of the wood
plywood_h_gap=1/8*in;                   //arbitrary
plywood_h_gapp=plywood_h_gap*2;         //derived


//distance to extend the back 
back_y=8*in;                            //arbitrary

//dimensions of the trailer base
main_x=40.375*in;                       //measured
main_y=48.125*in;                       //measured
main_z=0.75*in;
half_x=main_x/2;                        //derived
half_y=main_x/2;                        //derived
total_w=47*in;                          //arbitrary

//holes for the trailer rail bolts
//this lets the plywood sit flat
rail_hole_side=(3/4-1/16)*in;           //measured
rail_hole_end=15/16*in;                 //measured
rail_hole_center=(24+1/16)*in;          //measured
rail_bolt_d=0.75*in;                    //measured
rail_bolt_r=rail_bolt_d/2;              //derived

//holes for bolting down base plywood
base_bolt_off_center=6*in;              //measured
base_bolt_from_side=4*in;               //measured
base_bolt_d=3/8*in;                     //measured
base_bolt_r=base_bolt_d/2;              //derived
base_bolt_head_depth=0.23*in;           //measured
base_bolt_head_d=base_bolt_d+base_bolt_head_depth*2;        //measured
base_bolt_head_r=base_bolt_head_d/2;    //derived

//slots in the base
//slots are anchored by their center
slot_l=(3+5/8)*in;                      //measured
slot_w=7/8*in;                          //measured
slot_fillet=(1/8)*in;                   //arbitrary
slot_to_edge=slot_w/2+1/16*in;          //measured
side_slot_from_end=6.9375*in;           //measured
end_slot_from_side=7.1875*in;           //measured
center_slot_from_end=23.6875*in;        //measured

//front extension
front_y=12*in;                          //arbitrary
front_x=8*in;                           //arbitrary
front_opp=front_y;                      //derived
front_adj=(main_x-front_x)/2;           //derived
front_hyp=sqrt(front_opp*front_opp+front_adj*front_adj);    //derived
front_angle=atan(front_opp/front_adj);  //derived

echo ("Total length: ", (main_y+front_y+back_y)/in);
echo ("Total width: ", (main_x+wheel_x*2)/in);

//wheel well cutouts
//wheel_x is calculated due to plywood size
wheel_x=(total_w-main_x)/2;             //arbitrary
wheel_y=(15+7/8)*in;                    //measured
wheel_z=(2+5/8)*in;                     //measured
wheel_from_end=(11+15/16)*in;           //measured
//angled pieces leading up to wheel well
back_wheel_opp=wheel_x;                                                                 //derived
back_wheel_adj=wheel_from_end+back_y;                                                   //derived
back_wheel_hyp=sqrt(back_wheel_opp*back_wheel_opp+back_wheel_adj*back_wheel_adj);       //derived
back_wheel_angle=atan(back_wheel_opp/back_wheel_adj);                                   //derived
front_wheel_opp=wheel_x;                                                                //derived
front_wheel_adj=main_y-wheel_from_end-wheel_y;                                          //derived
front_wheel_hyp=sqrt(front_wheel_opp*front_wheel_opp+front_wheel_adj*front_wheel_adj);  //derived
front_wheel_angle=atan(front_wheel_opp/front_wheel_adj);                                //derived

//router bit diameter
router_d=1/8*in;                        //measured
router_r=router_d/2;                    //derived

//holes for motorcycle chock mounts
chock_z=5/16*in;                        //measured
chock_big_d=2*in;                       //measured
chock_big_r=chock_big_d/2;              //derived
chock_bolt_d=1/4*in;                    //measured
chock_bolt_r=chock_bolt_d/2;            //derived
chock_bolt_gap=(1+5/16)*in/2;           //measured

//bike chock sizes
grom_chock_x=8*in;                      //measured
grom_chock_y=7*in;                      //measured
grom_l=66*in;                           //measured
fifty_chock_x=(5+5/8)*in;               //measured
fifty_chock_y=7*in;                     //measured
fifty_l=64*in;                          //measured

//countersinks for tie downs
tie_d=0.25*in;                          //measured
tie_l=1.25*in;                          //measured
tie_w=(1+5/8)*in;                       //measured
tie_hole_d=3/8*in;                      //measured
tie_hole_r=tie_hole_d/2;                //derived
//tie down locations
tie_from_side=2.3*in;                   //arbitrary
tie_handlebars=45*in;                   //arbitrary
tie_fifty=fifty_l-48*in-back_y;         //arbitrary
tie_grom=-1.5*in;                       //arbitrary
tie_front_from_center=21*in/2;          //arbitrary
tie_front=main_y+3*in;                  //arbitrary

//bolt holes for securing front to trailer tongue
front_bolt_from_center=3.5*in/2;        //arbitrary
front_bolt_front=main_y+front_y-2*in;   //arbitrary
front_bolt_back=main_y+front_y-8*in;    //arbitrary

//holes to run a bike lock or chain through
bike_lock_w=1.5*in;                     //arbitrary
bike_lock_l=3*in;                       //arbitrary
bike_lock_from_center=6*in/2;           //arbitrary
bike_lock_y=main_y-4*in;                //arbitrary
bike_lock_fillet=1/4*in;                //arbitrary

//trailer sides (applies to end and side)
sides_height=12*in;                     //arbitrary
sides_thick=main_z;                     //arbitrary
//locking pieces between sides
lock=3*in;                              //arbitrary
lock_opp=lock;                          //derived
lock_adj=sides_height;                  //derived
lock_angle=atan(lock_opp/lock_adj);     //derived
//defines how much of the lock stays on side
lock_h=sides_height*2/3;                //arbitrary

side_l=main_y+back_y-slot_to_edge+sides_thick/2+lock;

//spikes at that lock sides to trailer
spike_bolt_d=base_bolt_d;               //measured
spike_bolt_r=spike_bolt_d/2;            //derived
spike_bolt_from_base=(1+3/16)*in;       //measured
spike_l=slot_l-cut_edge_gapp;           //derived
//how tapered is the spike
spike_point_difference=0.75*in;         //arbitrary
spike_point_d=spike_l-spike_point_difference*2;  //derived
spike_point_r=spike_point_d/2;          //derived
spike_max_depth=2*in;                   //measured
spike_opp=spike_point_difference;                               //derived
spike_adj=spike_bolt_from_base;                                 //derived
spike_hyp=sqrt((spike_opp*spike_opp)+(spike_adj*spike_adj));    //derived
spike_angle=atan(spike_opp/spike_adj);                          //derived
//special holes for ends not on a rail
back_spike_bolt_from_base=(3/16+1/8)*in;                        

end_w=main_x-(slot_to_edge-sides_thick/2)*2+lock*2;
echo("end_w: ", end_w/in);
end_height=sides_height;

//pattern across the sides
pat_d=2*in;
pat_r=pat_d/2;
pat_delta=4*in;
pat_l=30;
pat_h=9;
wall=1.5*in;

//holes along the edges for straps
strap_hole_d=0.5*in;
strap_hole_r=strap_hole_d/2;
strap_wall=3/4*in+strap_hole_r;
strap_fillet=1/8*in;
back_strap_hole_count=7;
strap_gap=main_x/back_strap_hole_count;




module rail_bolt(x,y) {
    translate([x,y,-pad])
    cylinder(r=rail_bolt_r,h=main_z+padd);
}

module bolt(x,y) {
    translate([x,y,-pad])
    cylinder(r=base_bolt_r,h=main_z+padd);
    translate([x,y,main_z-base_bolt_head_depth])
    cylinder(r1=base_bolt_r,r2=base_bolt_head_r+pad,h=base_bolt_head_depth+pad);
}

module corner(x,y){
    translate([x,y,-pad])
    cylinder(r=router_r,h=main_z+padd);
}

module slot(x,y) {
    translate([-slot_w/2+x,-slot_l/2+y,0]) {
        translate([0,0,-pad])
        cube([slot_w,slot_l,main_z+padd]);
        translate([0,0,main_z-slot_fillet])
        minkowski() {
            cylinder(r1=0,r2=main_z,h=main_z);
            cube([slot_w,slot_l,main_z]);
        }
        corner(0,0);
        corner(slot_w,0);
        corner(0,slot_l);
        corner(slot_w,slot_l);
    }
}

module rotated_slot(x,y) {
    rotate([0,0,90])
    slot(y,-x);
}

module wheel_well(x){
    translate([x,wheel_from_end,-pad])
    cube([wheel_x,wheel_y,wheel_z]);
}

module wheel_wells(){
    wheel_well(main_x);
    wheel_well(-wheel_x);
}

module tie_hole(y) {
    translate([0,y,-pad])
    cylinder(r=tie_hole_r,h=main_z+padd);
}

module tie_countersink(y) {
    translate([0,y,main_z-tie_d])
    cylinder(r1=tie_w/2,r2=tie_w/2+tie_hole_d+pad,h=tie_d+pad);
}

module tie_down(x,y){
    translate([x,-tie_l/2+y,0]) {
        hull() {
            tie_countersink(0);
            tie_countersink(tie_l);
        }
        tie_hole(0);
        tie_hole(tie_l);
    }
}

module chock_bolt(x) {
    translate([x,0,-pad])
    cylinder(r=chock_bolt_r,h=main_z+padd);
}

module chock_hole(x,y){
    translate([x,y,0]) {
        translate([0,0,main_z-chock_z])
        cylinder(r=chock_big_r,h=chock_z+pad);
        chock_bolt(0);
        chock_bolt(chock_bolt_gap);
        chock_bolt(-chock_bolt_gap);
    }
}

module chock(x,y,l) {
    translate([half_x,-back_y+l,0]) {
        chock_hole(-x/2,0);
        chock_hole(x/2,0);
        chock_hole(-x/2,-y);
        chock_hole(x/2,-y);
    }
}

module grom_chock() {
    chock(grom_chock_x,grom_chock_y,grom_l);
}

module fifty_chock() {
    chock(fifty_chock_x,fifty_chock_y,fifty_l);
}

module front_bolts(y) {
    bolt(half_x-front_bolt_from_center,y);
    bolt(half_x+front_bolt_from_center,y);
}

module bike_lock_hole(y) {
    translate([half_x,y,-pad])
    cylinder(r=bike_lock_w/2,h=main_z+padd);
}

module bike_lock_holes() {
    hull() {
        bike_lock_hole((bike_lock_l-bike_lock_w)/2);
        bike_lock_hole(-(bike_lock_l-bike_lock_w)/2);
    }
}
module bike_lock(x,y) {
    translate([x,y,0]) {
        bike_lock_holes();
        translate([0,0,main_z+padd-bike_lock_fillet])
        minkowski() {
            bike_lock_holes();
            cylinder(r1=0,r2=main_z+padd,h=main_z+padd);
        }
    }
}

module bike_locks(y) {
    bike_lock(-bike_lock_from_center,y);
    bike_lock(bike_lock_from_center,y);
}

module spike_positive() {
    //square piece inside base
    translate([0,-spike_l/2,0])
    cube([sides_thick,spike_l,main_z]);
    minkowski() {
        intersection() {
            translate([0,spike_point_r-spike_l/2,0])
            rotate([spike_angle,0,0])
            translate([0,0,-spike_hyp])
            cube([sides_thick/2,spike_l,spike_hyp]);
            
            translate([0,-spike_point_r+spike_l/2,0])
            rotate([-spike_angle,0,0])
            translate([0,-spike_l,-spike_hyp])
            cube([sides_thick/2,spike_l,spike_hyp]);
        }
        rotate([0,90,0])
        cylinder(r=spike_point_r,h=sides_thick/2);
    }
}

module spike_bolt_hole(z) {
    translate([-pad,0,z])
    rotate([0,90,0])
    cylinder(r=spike_bolt_r,h=sides_thick+padd);
}

module spike(y) {
    translate([0,y,-main_z])
    difference() {
        spike_positive();
        spike_bolt_hole(-spike_bolt_from_base);
        spike_bolt_hole(-back_spike_bolt_from_base);
        translate([-pad,-slot_l/2,-spike_point_d-spike_max_depth])
        cube([sides_thick+padd,slot_l,spike_point_d]);
    }
}

module rotated_spike(y) {
    rotate([0,0,90])
    spike(-y);
}

module side_lock(y) {
    translate([-pad,y,lock_h-cut_edge_gap])
    cube([sides_thick+padd,sides_thick+plywood_h_gapp,sides_height-lock_h+cut_edge_gap+pad]);
}

module side_locks() {
    side_lock(main_y+back_y-plywood_h_gap-sides_thick/2-slot_to_edge);
    side_lock(back_y+slot_to_edge-sides_thick/2-plywood_h_gap);
    side_lock(back_y+center_slot_from_end-sides_thick/2-plywood_h_gap);
    side_lock(lock-plywood_h_gap);
}

module pattern() {
    translate([0,pat_delta/2,pat_delta/2])
    for(pat_x=[0:pat_delta:sides_height]){
        for(pat_y=[0:pat_delta:main_y+back_y]){
            translate([-pad,pat_y,pat_x])
            rotate([0,90,0])
            cylinder(r=pat_r,h=sides_thick+padd);
        }
    }
    for(pat_x=[0:pat_delta:sides_height]){
        for(pat_y=[0:pat_delta:main_y+back_y]){
            translate([-pad,pat_y,pat_x])
            rotate([0,90,0])
            cylinder(r=pat_r,h=sides_thick+padd);
        }
    }
}

module side_pattern() {
    difference() {
        intersection() {
            pattern();
            translate([-pad,wall,wall])
            cube([sides_thick+padd,side_l-wall*2-lock,sides_height-wall*2]);
        }
        minkowski() {
            side_locks();
            rotate([0,90,0])
            cylinder(r=wall,h=sides_thick);
        }
    }
}

module side(x){
    translate([x-sides_thick/2,0,main_z]) {
        translate([0,-back_y,0])
        difference() {
            cube([sides_thick,side_l,sides_height]);
            translate([-pad,side_l-lock,0])
            rotate([-lock_angle,0,0])
            cube([sides_thick+padd,lock*2,sides_height*2]);
            side_locks();
            side_pattern();
        }
        spike(side_slot_from_end);
        spike(main_y-side_slot_from_end);
    }
}

module end_pattern() {
    intersection() {
        translate([lock+wall,-pad,wall])
        cube([end_w-lock*2-wall*2,sides_thick+padd,end_height-wall*2]);
        translate([lock,sides_thick,0])
        rotate([0,0,-90])
        pattern();
    }
}

module end(y) {
    translate([slot_to_edge-sides_thick/2-lock,y-sides_thick/2,main_z]) {
        difference() {
            cube([end_w,sides_thick,end_height]);
            //near angle cut
            translate([lock,-pad,0])
            rotate([0,-lock_angle,0])
            translate([-lock*2,0,0])
            cube([lock*2,sides_thick+padd,end_height*2]);
            //far angle cut
            translate([end_w-lock,-pad,0])
            rotate([0,lock_angle,0])
            cube([lock*2,sides_thick+padd,end_height*2]);
            //near lock cut
            translate([lock+slot_to_edge-sides_thick/2-plywood_h_gap*2,-pad,0])
            #cube([sides_thick+plywood_h_gap*2,sides_thick+padd,lock_h+cut_edge_gap]);

            translate([slot_to_edge,-pad,0])
            cube([lock,sides_thick+padd,wheel_z]);
            translate([main_x-slot_to_edge+lock,-pad,0])
            cube([lock,sides_thick+padd,wheel_z]);

            //cut end for wheel well clearance
            translate([lock+main_x-sides_thick/2-plywood_h_gap*2-slot_to_edge,-pad,0])
            cube([sides_thick+plywood_h_gapp,sides_thick+padd,lock_h+cut_edge_gap]);
            end_pattern();
        }
        rotated_spike(end_slot_from_side+lock-slot_to_edge+sides_thick/2);
        rotated_spike(main_x-end_slot_from_side+lock-slot_to_edge+sides_thick/2);
    }
}

module strap_hole(x,y) {
    translate([x,y,-pad])
    cylinder(r=strap_hole_r,h=main_z+padd);
    translate([x,y,main_z-strap_fillet])
    cylinder(r1=strap_hole_r,r2=strap_hole_r+strap_fillet+pad,h=strap_fillet+pad);
}

module back_strap_holes() {
    translate([-strap_gap/2,0,0])
    for(x=[strap_gap:strap_gap:strap_gap*back_strap_hole_count]) {
        strap_hole(x,-back_y+strap_wall);
    }
}

module base() {
    difference(){
        union() {
            cube([main_x,main_y,main_z]);
            translate([0,main_y,0]) {
                translate([half_x-front_x/2,0,0])
                cube([front_x,front_y,main_z]);

                rotate([0,0,front_angle])
                translate([0,-front_hyp,0])
                difference() {
                    cube([front_hyp,front_hyp,main_z]);
                    strap_hole(strap_gap/2,front_hyp-strap_wall);
                    strap_hole(strap_gap/2+strap_gap,front_hyp-strap_wall);
                    strap_hole(strap_gap/2+strap_gap*2,front_hyp-strap_wall);
                }

                translate([main_x,0,0])
                rotate([0,0,-front_angle])
                translate([-front_hyp,-front_hyp,0])
                difference() {
                    cube([front_hyp,front_hyp,main_z]);
                    strap_hole(front_hyp-strap_gap/2,front_hyp-strap_wall);
                    strap_hole(front_hyp-strap_gap/2-strap_gap,front_hyp-strap_wall);
                    strap_hole(front_hyp-strap_gap/2-strap_gap*2,front_hyp-strap_wall);
                }
            }
            //back_yeft_angle
            translate([0,-back_y,0])
            rotate([0,0,back_wheel_angle])
            difference() {
                cube([back_wheel_hyp,back_wheel_hyp,main_z]);
                strap_hole(strap_wall,back_wheel_hyp-strap_gap/2);
                strap_hole(strap_wall,back_wheel_hyp-strap_gap/2-strap_gap);
            }

            //back_right_angle
            translate([main_x,-back_y,0])
            rotate([0,0,-back_wheel_angle])
            translate([-back_wheel_hyp,0,0])
            difference() {
                cube([back_wheel_hyp,back_wheel_hyp,main_z]);
                strap_hole(back_wheel_hyp-strap_wall,back_wheel_hyp-strap_gap/2);
                strap_hole(back_wheel_hyp-strap_wall,back_wheel_hyp-strap_gap/2-strap_gap);
            }

            //front left
            translate([0,main_y,0])
            rotate([0,0,-front_wheel_angle])
            translate([0,-front_wheel_hyp,0])
            difference() {
                cube([back_wheel_hyp,back_wheel_hyp,main_z]);
                strap_hole(strap_wall,strap_gap/2);
                strap_hole(strap_wall,strap_gap/2+strap_gap);
            }

            //front right
            translate([main_x,main_y,])
            rotate([0,0,front_wheel_angle])
            translate([-front_wheel_hyp,-front_wheel_hyp,0])
            difference() {
                cube([back_wheel_hyp,back_wheel_hyp,main_z]);
                strap_hole(back_wheel_hyp-strap_wall,strap_gap/2);
                strap_hole(back_wheel_hyp-strap_wall,strap_gap/2+strap_gap);
            }

            //back_extension
            translate([0,-back_y,0])
            cube([main_x,back_y,main_z]);
        }
        rail_bolt(rail_hole_side,rail_hole_end);
        rail_bolt(main_x-rail_hole_side,rail_hole_end);
        rail_bolt(rail_hole_side,main_y-rail_hole_end);
        rail_bolt(main_x-rail_hole_side,main_y-rail_hole_end);
        rail_bolt(rail_hole_side,rail_hole_center);
        rail_bolt(main_x-rail_hole_side,rail_hole_center);

        bolt(half_x,rail_hole_end);
        bolt(half_x,main_y-rail_hole_end);
        bolt(half_x,rail_hole_center);

        bolt(half_x+base_bolt_off_center,rail_hole_end);
        bolt(half_x+base_bolt_off_center,main_y-rail_hole_end);
        bolt(half_x+base_bolt_off_center,rail_hole_center);

        bolt(half_x-base_bolt_off_center,rail_hole_end);
        bolt(half_x-base_bolt_off_center,main_y-rail_hole_end);
        bolt(half_x-base_bolt_off_center,rail_hole_center);

        bolt(main_x-base_bolt_from_side,rail_hole_end);
        bolt(main_x-base_bolt_from_side,main_y-rail_hole_end);
        bolt(main_x-base_bolt_from_side,rail_hole_center);

        bolt(base_bolt_from_side,rail_hole_end);
        bolt(base_bolt_from_side,main_y-rail_hole_end);
        bolt(base_bolt_from_side,rail_hole_center);

        slot(slot_to_edge,main_y-side_slot_from_end);
        slot(main_x-slot_to_edge,main_y-side_slot_from_end);
        slot(slot_to_edge,side_slot_from_end);
        slot(main_x-slot_to_edge,side_slot_from_end);

        rotated_slot(end_slot_from_side,slot_to_edge);
        rotated_slot(main_x-end_slot_from_side,slot_to_edge);

        rotated_slot(end_slot_from_side,main_y-slot_to_edge);
        rotated_slot(main_x-end_slot_from_side,main_y-slot_to_edge);

        rotated_slot(end_slot_from_side,center_slot_from_end);
        rotated_slot(main_x-end_slot_from_side,center_slot_from_end);

        rotated_slot(end_slot_from_side,-back_y+lock+slot_w/2-(slot_w/2-sides_thick/2));
        rotated_slot(main_x-end_slot_from_side,-back_y+lock+slot_w/2-(slot_w/2-sides_thick/2));

        wheel_wells();

        tie_down(tie_from_side,tie_handlebars);
        tie_down(main_x-tie_from_side,tie_handlebars);
        tie_down(tie_from_side,tie_grom);
        tie_down(main_x-tie_from_side,tie_grom);
        tie_down(tie_from_side,tie_fifty);
        tie_down(main_x-tie_from_side,tie_fifty);
        tie_down(half_x-tie_front_from_center,tie_front);
        tie_down(half_x+tie_front_from_center,tie_front);

        grom_chock();
        fifty_chock();
        bike_locks(bike_lock_y);
        back_strap_holes();

        front_bolts(front_bolt_front);
        front_bolts(front_bolt_back);
    }
}

color("cyan") side(slot_to_edge);
color("cyan") side(main_x-slot_to_edge);
color("lime") end(main_y-slot_to_edge);
//color("lime") end(slot_to_edge);
//color("lime") end(center_slot_from_end);
color("lime") end(-back_y+lock+sides_thick/2);
base();