Before do
    @login_page = LoginPage.new
    @sidebar = SideBarView.new
    @movie_page = MoviePage.new

    #page.driver.browser.manage.window.maximize 
    page.current_window.resize_to(1366,768)
end

Before("@login") do
    user = CONFIG["users"]["cat_manager"]
    @login_page.go
    @login_page.with(user["email"], user["password"])
end

After do |scenario|
    #if scenario.failed?
    shot_file = page.save_screenshot("log/screenshot.png")
    shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
    embed(shot_b64, "image/png", "Screenshot")
    #end
  end