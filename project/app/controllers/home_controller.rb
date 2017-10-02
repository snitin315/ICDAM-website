class HomeController < ApplicationController
  def index
    @photogallery = PhotoGallery.all
    @newsupdate = NewsUpdate.all
    @important_dates = ImportantDate.all
    @aboutconference = AboutConference.last.description
    @sponsors = Sponsor.all
    @papersubmission = PaperSubmission.all
    @publishpartner = PublishPartner.all
    @keynotespeaker = KeyNoteSpeaker.all

  end

  def about_institute
    @about_institute = AboutInstitute.last.content
    @important_dates = ImportantDate.all

  end

  def about_irdindia
    @about_irdindia = AboutIrdind.last.content
    @important_dates = ImportantDate.all
  end

  def about_universal_innovators
    @about_universal_innovators = AboutUniversalInnovator.last.content
    @important_dates = ImportantDate.all
  end

  def call_for_papers
    @call_for_papers = CallForPaper.all
    @important_dates = ImportantDate.all
  end


  def registration
    @important_dates = ImportantDate.all


  end

  def steeringcommittee
    @steercompost = SteerComPost.all
    @important_dates = ImportantDate.all
  end

  def technicalprogramcommittee
    @techcom = TechCom.all
    @important_dates = ImportantDate.all
  end

  def advisorycommittee
    @advcom = AdvCom.all
    @important_dates = ImportantDate.all
  end

  def sponsorship
    @sponsors = Sponsor.all
    @important_dates = ImportantDate.all

  end

  def publication
    @publication = Publication.all
    @important_dates = ImportantDate.all

  end

end
