class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end
  def directors
    render({:template=>"misc_templates/directors"})
  end
  def movies
      render({:template=>"misc_templates/movies"})
  end
  def actors
      render({:template=>"misc_templates/actors"})
  end
  def youngest
    @youngest_director=Director.where.not({ :dob => nil }).all.order({ :dob => :desc }).at(0)
    render({:template=>"misc_templates/youngest"})
  end
  def eldest
    @eldest_director=Director.all.order({ :dob => :asc }).at(0)
    render({:template=>"misc_templates/eldest"})
  end
  def directorPage
    dID=params.fetch("the_id")
    @director=Director.where(:id=>dID)[0]
    render({:template=>"misc_templates/dPage"})
  end
  def moviePage
    mID=params.fetch("the_id")
    @movie=Movie.where(:id=>mID)[0]
    @directoru=Director.where({:id=>@movie.director_id})[0]

    render({:template=>"misc_templates/mPage"})
  end
  def actorPage
    dID=params.fetch("the_id")
    @actor=Actor.where(:id=>dID)[0]
    @characters=Character.where({:actor_id=>dID})
    render({:template=>"misc_templates/aPage"})
  end
end
