describe "Cadastro" do
    it "Novo usuário" do
        result = HTTParty.post(
            "http://localhost:3000/user", 
            body: { full_name:  "Daniela Pochini", email: "eu@papito.io", password: "jarvis123" }.to_json,
            headers: {
                "Content-Type" => "application/json",
            },
        )
        expect(result.response.code).to eql "200"
    end
end