
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path2990(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[-39.445310,-268.885770],[5.484380,-268.885770],[14.919395,-268.327609],[19.198559,-267.629963],[23.185492,-266.653275],[26.880197,-265.397543],[30.282673,-263.862769],[33.392921,-262.048951],[36.210940,-259.956090],[38.732271,-257.622564],[40.917428,-255.051743],[42.766413,-252.243624],[44.279225,-249.198210],[45.455864,-245.915499],[46.296332,-242.395493],[46.800627,-238.638189],[46.968750,-234.643590],[46.800627,-230.631362],[46.296332,-226.856446],[45.455864,-223.318841],[44.279225,-220.018546],[42.766413,-216.955561],[40.917428,-214.129886],[38.732271,-211.541519],[36.210940,-209.190460],[33.392921,-207.114031],[30.282673,-205.314462],[26.880197,-203.791752],[23.185492,-202.545901],[19.198559,-201.576910],[14.919395,-200.884778],[5.484380,-200.331090],[-12.375000,-200.331090],[-12.375000,-163.909210],[-39.445310,-163.909210],[-39.445310,-268.885770]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-12.375000,-249.268590],[-12.375000,-219.948270],[2.601560,-219.948270],[6.314906,-220.185546],[9.580033,-220.897450],[12.396941,-222.083984],[14.765630,-223.745150],[16.642053,-225.876461],[17.982371,-228.403304],[18.786584,-231.325680],[19.054690,-234.643590],[18.786584,-237.957021],[17.982371,-240.866184],[16.642053,-243.371080],[14.765630,-245.471710],[12.396941,-247.132797],[9.580033,-248.319305],[6.314906,-249.031235],[2.601560,-249.268590],[-12.375000,-249.268590]]);
    }
  }
}

module poly_path2994(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[34.453130,22.948910],[34.453130,45.167660],[25.910101,41.775147],[17.578130,39.331730],[9.580036,37.855228],[2.039060,37.362980],[-2.496119,37.530018],[-6.398470,38.031010],[-9.667994,38.865955],[-12.304690,40.034850],[-14.334981,41.555404],[-15.785183,43.445069],[-16.655293,45.703845],[-16.945310,48.331730],[-16.751973,50.326886],[-16.171903,52.093499],[-15.205098,53.631570],[-13.851560,54.941100],[-11.953147,56.061742],[-9.421905,57.103259],[-2.460940,58.948910],[9.070310,61.269230],[17.191365,63.255590],[24.046819,65.698959],[29.636675,68.599338],[33.960940,71.956730],[37.190867,75.920619],[39.497979,80.640351],[40.882273,86.115928],[41.343750,92.347350],[41.182222,96.550727],[40.697704,100.477245],[39.890196,104.126906],[38.759699,107.499709],[37.306212,110.595654],[35.529735,113.414743],[33.430267,115.956974],[31.007810,118.222350],[28.271093,120.199889],[25.193808,121.913756],[21.775953,123.363952],[18.017529,124.550475],[13.918535,125.473327],[9.478970,126.132506],[-0.421870,126.659850],[-10.423859,126.185241],[-20.460940,124.761410],[-30.515640,122.405945],[-40.570310,119.136410],[-40.570310,96.284850],[-30.691419,100.978224],[-21.164060,104.370790],[-16.497091,105.539746],[-11.917999,106.374709],[-7.426782,106.875680],[-3.023440,107.042660],[1.146941,106.858102],[4.798786,106.304396],[7.932098,105.381543],[10.546880,104.089540],[12.607878,102.454786],[14.080033,100.503618],[14.963343,98.236036],[15.257810,95.652040],[15.055627,93.331744],[14.449170,91.292688],[13.438440,89.534869],[12.023440,88.058290],[10.041471,86.757531],[7.259723,85.527070],[-0.703120,83.277040],[-11.179690,80.956730],[-18.527362,79.018765],[-24.820334,76.579809],[-30.058609,73.639858],[-34.242190,70.198910],[-37.410649,66.186740],[-39.673833,61.532945],[-41.031739,56.237525],[-41.484370,50.300480],[-41.326171,46.493742],[-40.851565,42.913317],[-40.060552,39.559203],[-38.953131,36.431400],[-37.529303,33.529908],[-35.789067,30.854726],[-33.732423,28.405853],[-31.359370,26.183290],[-28.689702,24.205784],[-25.743177,22.491940],[-22.519793,21.041759],[-19.019551,19.855240],[-15.242451,18.932384],[-11.188493,18.273190],[-2.250000,17.745790],[6.521440,18.079853],[15.539060,19.081730],[24.837834,20.681413],[34.453130,22.948910]]);
  }
}

module poly_path2992(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-45.210940,-124.620790],[-18.140620,-124.620790],[-18.140620,-61.691100],[-17.876971,-55.648601],[-17.085962,-50.528968],[-15.767596,-46.332198],[-13.921870,-43.058290],[-11.443386,-40.628100],[-8.296914,-38.892256],[-4.482452,-37.850756],[0.000000,-37.503600],[4.508755,-37.850756],[8.331985,-38.892256],[11.469693,-40.628100],[13.921880,-43.058290],[15.798302,-46.332198],[17.138618,-50.528968],[17.942830,-55.648601],[18.210940,-61.691100],[18.210940,-124.620790],[45.281250,-124.620790],[45.281250,-61.691100],[45.106535,-56.296805],[44.582464,-51.258470],[43.709037,-46.576095],[42.486254,-42.249679],[40.914115,-38.279222],[38.992620,-34.664723],[36.721768,-31.406183],[34.101560,-28.503600],[31.123139,-25.949280],[27.777784,-23.735537],[24.065494,-21.862369],[19.986269,-20.329776],[15.540107,-19.137759],[10.727009,-18.286318],[5.546973,-17.775451],[0.000000,-17.605160],[-5.530532,-17.775451],[-10.696312,-18.286318],[-15.497341,-19.137759],[-19.933620,-20.329776],[-24.005150,-21.862369],[-27.711931,-23.735537],[-31.053964,-25.949280],[-34.031250,-28.503600],[-36.651494,-31.406183],[-38.922371,-34.664723],[-40.843882,-38.279222],[-42.416026,-42.249679],[-43.638804,-46.576095],[-44.512215,-51.258470],[-45.036261,-56.296805],[-45.210940,-61.691100],[-45.210940,-124.620790]]);
  }
}

module poly_path2996(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-47.039060,163.909210],[-19.968750,163.909210],[-19.968750,203.917020],[19.968750,203.917020],[19.968750,163.909210],[47.039060,163.909210],[47.039060,268.885770],[19.968750,268.885770],[19.968750,224.377960],[-19.968750,224.377960],[-19.968750,268.885770],[-47.039060,268.885770]]);
  }
}

poly_path2990(1);
poly_path2994(1);
poly_path2992(1);
poly_path2996(1);