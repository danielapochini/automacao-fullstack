describe "post" do
    context "when new user" do
        before do
            @new_user = build(:user).to_hash
            
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