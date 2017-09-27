class HomeController < ApplicationController
  def index
  end

  def about_institute
    @about_institute = AboutInstitute.last.content
    @important_dates = ImportantDate.all
  end

  def about_irdindia
    @about_irdindia = AboutIrdind.last.content
    @important_dates = ImportantDate.all
  end

end
