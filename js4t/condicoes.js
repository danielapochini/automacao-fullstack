var idade = prompt("Qual a sua idade?")

if (idade >= 18){
    console.log("Posso ir no show do Iron Maiden. Corram para as colinas!")
} else if (idade >= 12) {
    console.log("Posso ir no show do Jonas Brothers.")
} else {
    console.log("Posso ir no show do Patati Patatá. Porque eu quero sorrir e brincar!")
}

var ingresso = prompt("Qual o tipo de ingresso?")

switch (ingresso) {
    case "vip":
        console.log("Irei ficar no camarote.")
        break;
    case "premium":
        console.log("Irei ficar na pista premium.")
        break;
    case "comum":
        console.log("Irei ficar na arquibancada")
        break;
    default:
        console.log("Tipo de ingresso inválido!")
        break;
}