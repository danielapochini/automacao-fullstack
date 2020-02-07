var chai = require("chai");
var chaiHttp = require("chai-http");

chai.use(chaiHttp);

const app = require("../app");

const request = chai.request(app);
// const request = chai.request("http://localhost:3003"); chamando numa url externa
const expect = chai.expect;

describe("suite", function(){
    it("meu primeiro teste", function(){
        expect(1).to.equals(1);
        console.log("Hello Mocha")
    })

    it("deve retornar mensagem olá", function(done){
        request.get("/hello").end(function(err, res){
            expect(res.body.message).to.equals("Olá, Nodejs com express");
            done();
        })
    })
})