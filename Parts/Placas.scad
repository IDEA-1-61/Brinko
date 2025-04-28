


unidad=13;
lonX=5;
lonY=6;
$fn=100;


difference(){
    
    minkowski(){
        cube([lonX*unidad,lonY*unidad,0.4]);
        cylinder(r=unidad/2,h=0.01,center=true);
        
        
        
    }
    
    for(f=[0:1]){
         for(g=[0:1]){
             translate([lonX*unidad*f,lonY*unidad*g])
             cylinder(d=5.72,h=3,center=true);
         }
    }

}
