import Foundation

/*
//var es para poner variables
var num = 2
//num es numero
num = "hola"
print (num)

//var num: float=2.0
//let es para variables que NO cambian.
//let texto: String = "Un texto"
 */
func tieneCaracteresEspeciales(texto: String) -> Bool {
    let especiales = "?:;!()&/%$.,[]"
    for letra in texto {
        for especial in especiales {
            if letra == especial {
                return true
            }
        }
    }
    return false
}

print("Hola, ¿Cómo te llamas?")


/*
 La exclamación hace que saques lo que tiene la variable tal cual, es como forzarlo
 Usualmente escogemos let para que no se pueda cambiar, si sabes q lo vas a cambiar más adelante usamos varUsualmente escogemos let para que no se pueda cambiar, si sabes q lo vas a cambiar más adelante usamos var
 */
var nombre = readLine()!
//booleana para el nombre correcto o incorrecto
var nombreIncorrecto=false

repeat{
    //Este if es para la longitud del nombre, tiene q tener no + d 10 caracteres
    if nombre.count > 10{//Máximo 10 letras
       
        print("Error: Nombre demasiado largo. Escribe otro: ")
        //si el nombre es mayor de 10 nombreIncorrecto se cumple(true)
        nombreIncorrecto=true
        nombre = readLine()!
    //Si el primer caracter de la variable nombre es un numero
    } else if nombre.first!.isNumber { //No empezar por número
        //nombreIncorrecto se cumple
        nombreIncorrecto=true
        print("Error: No puede empezar por un número. Escribe otro: ")
        nombre = readLine()!
        
    } else if tieneCaracteresEspeciales(texto: nombre){//Sin caracteres especiales
        nombreIncorrecto = true
        print("Error: Caracteres no validos")
        nombre = readLine()!
    } else {
       //si salta el else es porque el nombre cumple los parametros (es false)
       nombreIncorrecto=false
    }
   
} while nombreIncorrecto
//Si nombreIncorrecto =false sale del bucle y sigue.
print("Hola", nombre)

