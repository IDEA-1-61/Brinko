


unidad=13;
//lonX=1.5;//espacios siempre agregará uno
//lonY=5;//espacios siempre agregará uno

lonX=4;//espacios siempre agregará uno
lonY=7;//espacios siempre agregará uno
lonA=5;
op=0;
$fn=100;


difference(){
    
    minkowski(){
        if(op==0){
           cube([lonX*unidad,lonY*unidad,0.4]); 
        }else if(op==1){
             linear_extrude(height=0.4)
        polygon([[0,0],[lonX*unidad,0],[0,lonY*unidad]]);
        }else if(op==2){
            linear_extrude(height=0.4)
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
