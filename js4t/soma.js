function somaValores() {
    var n1 = document.getElementById("numberOne").value
    var n2 = document.getElementById("numberTwo").value

    var result = parseInt(n1) + parseInt(n2)
    var divResultado = document.getElementById("resultado")
    divResultado.append("O resultado da soma é: " + result)
    console.log(result)
}