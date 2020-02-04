describe "post" do
    context "when new user" do
        before do
            @new_user = {full_name:  "Daniela Pochini", email: "eu@papito.io", password: "jarvis123"}
            Database.new.delete_user(@new_user[:email])
            
            @result = HTTParty.post(
                "http://localhost:3000/user",
                body: @new_user.to_json,
                headers: {
                    "Content-Type" => "application/json",
                },
            )
        end

        it {expect(@result.response.code). to eql "200"}
    end
end