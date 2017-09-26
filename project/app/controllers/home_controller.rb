class HomeController < ApplicationController
  def index
  end

  def about_institute
    @about_institute = AboutInstitute.first.content
    @important_dates = ImportantDate.all
  end

end 
