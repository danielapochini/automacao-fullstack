Before do
    @login_page = LoginPage.new
    @sidebar = SideBarView.new
    @movie_page = MoviePage.new
end

Before("@login") do
    @login_page.go
    @login_page.with("tony@stark.com", "pwd123")
end