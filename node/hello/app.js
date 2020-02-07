const express = require("express");
const app = express();


app.get("/hello", function(req, res) {
    res.status(200).json({message: "Olá, Nodejs com express"})
})

app.listen(3003);

module.exports = app; //exportando