require "pg"

class Database
    def initialize
        conn = {host: "localhost", dbname: "nflix", user:"postgres", password: "qaninja" }
        @connection = PG.connect(conn)
    end    
    
    def delete_user(email)
        @connection.exec("DELETE from public.users where email = '#{email}';")
    end
end