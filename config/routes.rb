Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors",{:controller=>"misc",:action=>"directors" })
  get("/movies",{:controller=>"misc",:action=>"movies"})
  get("/actors",{:controller=>"misc", :action=>"actors"})
  get("/directors/youngest",{:controller=>"misc",:action=>"youngest" })
  get("/directors/eldest",{:controller=>"misc",:action=>"eldest" })
  get("/directors/:the_id",{:controller=>"misc",:action=>"directorPage" })
  get("/movies/:the_id",{:controller=>"misc",:action=>"moviePage"})
  get("/actors/:the_id",{:controller=>"misc", :action=>"actorPage"})
end
