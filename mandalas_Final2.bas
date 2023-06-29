Dim sx As Integer
Dim sy As Integer
Dim seno As Double
Dim coseno As Double
Dim thijos As Integer
Dim posicion As Double
Dim colors As Integer
Dim PI As Double
Dim RAD As Double
Dim repeticiones As Integer
Dim velocidad As Double

sx = 800
sy = 640
Rem thijos = 8
Rem colors = 120
PI = 3.1416

Screen _NewImage(sx, sy, 256)


i = 1
Input "repeticiones "; repeticiones
Input "Velocidad (1 = 1 forma por segundo/ 2= 2 formas por segundo)/etc... "; velocidad
Input "Hijos "; thijos
For s = 1 To 254
    Color 0, s
    Print "C"; s;
Next
Color 15, 0
Print ""
Input "Color: "; colors
posicion = 360 / thijos

For z = 1 To repeticiones
    Cls

    Do
        _Limit velocidad
        Circle (sx / 2, sy / 2), 100, colors

        posicion = posicion * i

        Rem pasamos a radianes
        RAD = (posicion * PI) / 180
        seno = Sin(RAD) * 100
        Rem redondeamos a dos decimales
        seno = Fix(((seno * 10) + .5) / 10)

        Rem pasamos a radianes
        coseno = Cos(RAD) * 100
        Rem redondeamos a 2 decimales
        coseno = Fix(((coseno * 10) + .5) / 10)

        Circle ((sx / 2) + coseno, (sy / 2) + seno), 100, colors
        _Display
        posicion = 360 / thijos
        i = i + 1
    Loop While i <= thijos

    i = 1
Next
