//Loops (Laços de repetição)

// for é movido por declaração
for(var a = 0; a < 10; a++){
    console.log("Repetindo porque ${a} é menor que 10.")
}

// while é movido por uma condição e fica no laço enquanto esta condição for true (verdadeiro)
var i = 0
while (i <= 10) {
    console.log("Repetindo porque ${i} é menor ou igual a 10.")
    i++
}

// forEach - trabalha com arrays
var avengers = ["Ironman", "Spiderman", "Thor", "Capitão América", "Pantera Negra", "Black Window"]

avengers.forEach(function(value, key) {
    console.log("${value} na posição ${key}")
});