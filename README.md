# Brinko Parts Repository

This is the source repository for Brinko parts. It contains a folder with parts created in Siemens Solid Edge. Using the variable tool, you can modify the dimensions of each individual file.

## Part Naming

There's a straightforward naming convention for files and parts. This can help you understand the type of each part.

```
bik-bd-sm
        ^---- subtype if necessary   
     ^------------------ part type
 ^---------------------- main group or category of the part
```

### Groups

There are several main groups, with the base group being "bk," which stands for BRINKO.

- **bik**: BRINKO base piece of the system; whole units with 2 dimensions and a height of 1.
- **pan**: Panels; pieces with half the height of the base piece, having 2 dimensions.
- **bem**: Bars; pieces with half the height of the base piece, having 1 dimension.
- **eck**: Corners; pieces with dimensions 1x1x1 that connect 3 points.
- **rob**: Round bars that join edges and have a rounded finish; 1-dimensional.
- **sen**: Sensors.
- **pin**: Connector pieces.

### Types

The type of each piece indicates what type of beam, sensor, or conductor it is.

- **an**: Form with a defined angle.
- **bd**: Plate (e.g., Arduino, ESP32, etc.).
- **gr**: Gear.
- **I**, **H**: Beam frame with specific shapes.
- **sen**: Box for sensors, modules, or other independent electrical components.
- **mot**: Box for motors.
- **ax**: Hole or axle.
- **tr**: Caterpillar chain piece.

### Subtypes

Some pieces have defined subtypes.

- **sm**: Smooth or flat version without too many holes.
- **ho**: Hollow inside.

### Value

The value is kept as short as possible and represents the specific part—for example, its dimension or size, sensor type, etc. Examples:

- ``bik-ho-20x1``: Brinko base piece, hollow, with dimensions 20x1.
- ``bik-sm-ho-2x10``: Smooth, hollow Brinko base piece, 2x10.
- ``pan-sm-4x4``: Smooth panel, 4x4.
- ``bem-sm-6``: Smooth bar with dimension 6.
- ``rob-4``: Round bar with dimension 4.

---


# Brinko

Este es el repositorio fuente de las partes de Brinko, en el se encuentra una carpeta de partes realizadas en Siemens Solid Edge, con la herramienta de variables se puede modificar la dimensión de cada archivo individual.

## nombres de las partes

Hay una clave de nomenclatura muy simple para archivos y partes. Esto puede ayudarle a entender qué tipo de parte es.

```
bik-bd-sm
        ^---- subtipo si es necesario   
     ^------------------ tipo de parte
 ^---------------------- grupo o categoría principal de la parte
```

### grupo

Hay algunos grupos principales, el grupo base es bk, que significa BRINKO.

    * **bik** - BRINKO pieza base del sistema tiene unidades enteras, tienen 2 dimensiones y altura de 1
    * **pan** - Paneles, piezas que tienen la mitad de la altura de la pieza base, tienen 2 dimensiones
    * **bem** - barras, piezas que tienen la mitad de la altura de la pieza base, tienen 1 dimensión
    * **eck** - esquinas, pieza con dimensión 1x1x1 que une 3 puntos
    * **rob** - barras redondas que unen bordes y tienen acabando redondo, tienen 1 dimensión
    * **sen** - sensor
    * **pin** - pieza conectora

### tipo

Tipo de pieza, que podría decirle, qué tipo de haz, sensor o conductor es.

    * **an** - Forma con ángulo definido
    * **bd** - Placa (Arduino, ESP32, etc.)
    * **gr** - Engranaje
    * **I**,**H** - Marco de haz con forma específica
    * **sen** - Caja para sensor, módulo u otra pieza eléctrica independiente
    * **mot** - Caja para motor
    * **ax** - hueco o eje
    * **tr** - Pieza de cadena de oruga

### subtipo

Algunas piezas tienen subtipos definidos.

    * **sm** - smooth o liso, es decir, versión sin demasiados agujeros.
    * **ho** - hollow o hueco por dentro

### valor

El valor es lo más corto posible y representa la parte específica. Es decir, la dimensión o tamaño, el tipo de sensor, etc. Ejemplos:

    * ``bik-ho-20x1`` - Pieza base Brinko hueco 20x1 
    * ``bik-sm-ho-2x10`` - Pieza base Brinko lisa ahuecada de 2 por 10
    * ``pan-sm-4x4`` - panel liso de 4 por 4
    * ``bem-sm-6`` - barra lisa de dimensión 6
    * ``rob-4`` - barra redonda de dimensión 4
