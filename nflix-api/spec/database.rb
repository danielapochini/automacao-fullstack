require "pg"

class Database
    def initialize
        conn = {host: "localhost", dbname: "nflix", user:"postgres", password: "qaninja" }
        @connection = PG.connect(conn)
    end    

    def find_user(email)
        query = "SELECT id, full_name, password, email, created_at, updated_at" \
                " FROM public.users WHERE email = '#{email}';"
        @connection.exec(query).first
    end
    
    def delete_user(email)
        @connection.exec("DELETE from public.users where email = '#{email}';")
    end
end