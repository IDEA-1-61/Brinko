


unidad=13;
//lonX=1.5;//espacios siempre agregará uno
//lonY=5;//espacios siempre agregará uno

//placas HB lonX 4 y LonY 7
//placas HBT1 op 2 lonX 2 y LonY 7 lonA 1.5
//placas HBT2 op 2 lonX 2 y LonY 7 lonA 1.25
lonX=1.5;//espacios siempre agregará uno
lonY=6;//espacios siempre agregará uno
//lonA=1.5;
lonA=0.5;
op=2;
$fn=100;
espesor=0.6;


difference(){
    
    minkowski(){
        if(op==0){
           cube([lonX*unidad,lonY*unidad,espesor]); 
        }else if(op==1){
             linear_extrude(height=espesor)
        polygon([[0,0],[lonX*unidad,0],[0,lonY*unidad]]);
        }else if(op==2){
            linear_extrude(height=espesor)
        polygon([[-lonX*unidad,0],[lonX*unidad,0],[lonA*unidad,lonY*unidad],[-lonA*unidad,lonY*unidad]]);
        }
       
        
        cylinder(r=unidad/2,h=0.01,center=true);
        
        
        
    }
    
    if(op<2){   
        for(f=[0:1]){
             for(g=[0:1]){
                 translate([lonX*unidad*f,lonY*unidad*g])
                 cylinder(d=6,h=3,center=true);
             }
        }
    }else if(op==2){
        
         translate([lonA*unidad,lonY*unidad])
                 cylinder(d=6,h=3,center=true);
        
        translate([-lonA*unidad,lonY*unidad])
                 cylinder(d=6,h=3,center=true);
        
        translate([lonX*unidad,0])
                 cylinder(d=6,h=3,center=true);
        
        translate([-lonX*unidad,0])
                 cylinder(d=6,h=3,center=true);
        
    }

}

for(f=[0:1]){
         for(g=[0:1]){
             if(op==0){
             translate([lonX*unidad*f,lonY*unidad*g])
     rotate_extrude()
             
    polygon([[3,0],[3,1],[3.4,3.25],[3,5.5],[unidad/3,5.5],[unidad/2,0]]);
             }else if(op==1){
                         if (!(f == 1 && g == 1)) { // Condición para excluir el caso f=1 y g=1
                    translate([lonX * unidad * f, lonY * unidad * g])
                        rotate_extrude()
                        polygon([
                            [3, 0],
                            [3, 1],
                            [3.4, 3.25],
                            [3, 5.5],
                            [unidad / 3, 5.5],
                            [unidad / 2, 0]
                        ]);
                }

             }
         }
     }
     
     
     if(op==2){
         translate([lonA*unidad,lonY*unidad])
                 rotate_extrude()
                        polygon([
                            [3, 0],
                            [3, 1],
                            [3.4, 3.25],
                            [3, 5.5],
                            [unidad / 3, 5.5],
                            [unidad / 2, 0]
                        ]);
        
        translate([-lonA*unidad,lonY*unidad])
                 rotate_extrude()
                        polygon([
                            [3, 0],
                            [3, 1],
                            [3.4, 3.25],
                            [3, 5.5],
                            [unidad / 3, 5.5],
                            [unidad / 2, 0]
                        ]);
        
        translate([lonX*unidad,0])
                 rotate_extrude()
                        polygon([
                            [3, 0],
                            [3, 1],
                            [3.4, 3.25],
                            [3, 5.5],
                            [unidad / 3, 5.5],
                            [unidad / 2, 0]
                        ]);
        
        translate([-lonX*unidad,0])
                 rotate_extrude()
                        polygon([
                            [3, 0],
                            [3, 1],
                            [3.4, 3.25],
                            [3, 5.5],
                            [unidad / 3, 5.5],
                            [unidad / 2, 0]
                        ]);
         
         
     }
