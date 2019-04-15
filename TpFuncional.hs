data Auto = Auto {
 nombre::String,
 nafta::Integer,
 velocidad::Integer,
 enamorade::String,
 truco::String
} deriving (Show)

rochaMcQueen = Auto{
 nombre = "RochaMcQueen",
 nafta = 300,
 velocidad = 0,
 enamorade = "Ronco",
 truco = "deReversaRocha"
}

biankerr = Auto {
 nombre = "Biankerr",
 nafta = 500,
 velocidad = 20,
 enamorade = "Tinch",
 truco = "impresionar"
}

gushtav = Auto{
 nombre = "Gushtav",
 nafta = 200,
 velocidad = 130,
 enamorade = "PetiLaLinda",
 truco = "nitro"
}

rodra = Auto {
 nombre = "Rodra",
 nafta = 0,
 velocidad = 50,
 enamorade = "Taisa",
 truco = "fingirAmor"
}

deReversaRocha::Auto->Integer->Auto
deReversaRocha unAuto longPista = unAuto { 
   nafta = nafta( unAuto ) + (div longPista 5)}

impresionar::Auto->Auto
impresionar unAuto = unAuto {
   velocidad = velocidad(unAuto) *2
}

nitro::Auto->Auto
nitro unAuto = unAuto{
   velocidad = velocidad(unAuto) + 15
}

fingirAmor::Auto->String->Auto
fingirAmor unAuto enamoradeNew = unAuto{
   enamorade = enamoradeNew
}

--Hasta aca punto 1 --

incrementarVelocidad unAuto = unAuto {
   velocidad = velocidad(unAuto)+(velocidadSegunVoc (enamorade unAuto))
}

velocidadSegunVoc::String->Integer
velocidadSegunVoc enamoradeNombre 
  | (calcularCantidadVoc enamoradeNombre) >=1 && (calcularCantidadVoc enamoradeNombre)<=2 = 15
  | (calcularCantidadVoc enamoradeNombre) >=3 && (calcularCantidadVoc enamoradeNombre)<=4 = 20
  | (calcularCantidadVoc enamoradeNombre) >=4 = 30
  | otherwise = 0

calcularCantidadVoc::String->Int
calcularCantidadVoc lista = length (voc lista)
voc::String->String
voc ""=""
voc n|k=="a"||k=="e"||k=="i"||k=="o"||k=="u"=k++(voc (tail n))
     |otherwise=""++(voc (tail n))
     where k=take 1 n

--Hasta aca punto 2--


 
