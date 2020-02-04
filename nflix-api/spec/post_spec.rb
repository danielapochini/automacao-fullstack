describe "Cadastro" do
    it "Novo usuário" do
        Database.new.delete_user("eu@papito.io")

        result = HTTParty.post(
            "http://localhost:3000/user", 
            body: { full_name:  "Daniela Pochini", email: "eu@papito.io", password: "jarvis123" }.to_json,
            headers: {
                "Content-Type" => "application/json",
            },
        )
        puts result
        expect(result.response.code).to eql "200"
    end
end