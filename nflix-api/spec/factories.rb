require_relative "models/user_model"

FactoryBot.define do
    factory :user, class: UserModel do
        full_name {"Daniela Pochini"}
        email {"qaninja@papito.io"}
        password {"teste1234"}

        after(:build) do |user|
            #puts "apagando o email " + user.email
            Database.new.delete_user(user.email)
        end
    end

    factory :user_wrong_email, class: UserModel do
        full_name {"Daniela Pochini"}
        email {"qaninja#papito.io"}
        password {"teste1234"}
    end
end