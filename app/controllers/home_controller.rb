class HomeController < ApplicationController
  def index
    @photogallery = PhotoGallery.all
    @newsupdate = NewsUpdate.all
    @important_dates = ImportantDate.all
    @aboutconference = AboutConference.last.description
    @sponsors = Sponsor.all
    @papersubmission = PaperSubmission.all
    @publishpartners = PublishPartner.all.reverse
    @keynotespeaker = KeyNoteSpeaker.all

  end

  def about_institute
    @about_institute = AboutInstitute.last.content
    @important_dates = ImportantDate.all

  end
  def special_session
    @special_session=SpecialSession.all

  end
  def download
    # byebug
    filepath=Dir.pwd + '/app/assets/downloads/'+ params['filename']
    send_file(
      filepath,
      filename: params['filename'],
    )

  end
  def downloads_page
    @downloads=Download.all
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

  def contact_us
    @response= session[:response]

  end

  def contact_us_post

    # byebug
    @name=params["name"]
    @email=params["email"]
    @subject=params["subject"]
    @content= params["content"]
    respond_to do |format|
      unless @name=="" || @email=="" || @content=="" || @subject==""
        @response=true
        format.js{}
        UserMailer.contact_us(@name,@email,@content,@subject).deliver_now

        session[:response]=@response
        format.html{ redirect_to "/home/contact_us"
            }

      else
        @response="empty"
        session[:response]=@response
        format.html{      redirect_to "/home/contact_us"
        }
        format.js{
        }

      end
    end

  end

  def special_submission
    @important_dates = ImportantDate.all
    @response= session[:response]
  end

  def special_submission_post
    # byebug
    @name=params["name"]
    @email=params["email"]
    @number=params["number"]
    @introduction= params["introduction"]
    @objective=params["objective"]
    @paper_count=params["paper_count"]
    if params['file'] != nil
      @file = save_file(params["file"])
      respond_to do |format|
        unless @name=="" || @email=="" || @number=="" || @introduction=="" || @objective =="" || @paper_count==""

          UserMailer.special_submission(@name,@email,@number,@introduction,@objective,@paper_count,@file).deliver_now
          @response=true
          session[:response]=@response
        format.html{return redirect_to '/home/special_submission'}
        else
          @response="empty"
          session[:response]=@response
          format.js{}
          format.html{redirect_to "/home/special_submission"}
        end
      end

    else

    respond_to do |format|
      unless @name=="" || @email=="" || @number=="" || @introduction=="" || @objective =="" || @paper_count==""

        UserMailer.special_submission(@name,@email,@number,@introduction,@objective,@paper_count,@file).deliver_now
        @response=true
        session[:response]=@response
        format.js{}
        format.html{return redirect_to '/home/special_submission'}
      else
        @response="empty"
        session[:response]=@response
        format.js{}
        format.html{redirect_to "/home/special_submission"}
      end
    end
    end
  end
  def conference_venue
  end


  def important_dates
    @important_dates = ImportantDate.all

  end
  def paper_submission
    @important_dates = ImportantDate.all

  end

  def download_paper_template

    filepath= Dir.pwd + '/public/PaperSubmission/paper_template.pdf'
    send_file(
    filepath,
    filename: "paper_template.pdf",
    type: "application/pdf"
  )
  end

  def abstract
    @important_dates = ImportantDate.all

  end
  def abstract_post

  end


  private
    def save_file(uploaded_file)
      filename = SecureRandom.hex(6)+ "."+uploaded_file.original_filename.split('.')[-1]
      filepath = Dir.pwd + "/public/uploads/" + filename
      File.open(filepath,'wb') do |file|
			file.write(uploaded_file.read())
		end
    return filename
    # function to save file
    end




end
