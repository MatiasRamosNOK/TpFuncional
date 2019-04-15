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