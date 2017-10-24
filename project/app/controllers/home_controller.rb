class HomeController < ApplicationController
  def index
    @photogallery = PhotoGallery.all
    @newsupdate = NewsUpdate.all
    @important_dates = ImportantDate.all
    @aboutconference = AboutConference.last.description
    @sponsors = Sponsor.all
    @papersubmission = PaperSubmission.all
    @publishpartners = PublishPartner.all
    @keynotespeaker = KeyNoteSpeaker.all

  end

  def about_institute
    @about_institute = AboutInstitute.last.content
    @important_dates = ImportantDate.all

  end
  def special_session

  end

  def ss1
    filepath= Dir.pwd + '/app/assets/downloads/SS1.pdf'
    send_file(
    filepath,
    filename: "SS1 - Advanced Data Mining and Machine Learning with Soft Computing.pdf",
    type: "application/pdf"
  )
  end
  def ss2
    filepath= Dir.pwd + '/app/assets/downloads/SS2.pdf'
    send_file(
    filepath,
    filename: "SS2 - Recent Advances in Networks and Data Security.pdf",
    type: "application/pdf"
  )
  end
  def ss3
    filepath= Dir.pwd + '/app/assets/downloads/SS3.pdf'
    send_file(
    filepath,
    filename: "SS3 - Innovative trends in Machine Learning and Cloud Computing.pdf",
    type: "application/pdf"
  )
  end
  def ss4
    filepath= Dir.pwd + '/app/assets/downloads/SS4.pdf'
    send_file(
    filepath,
    filename: "SS4 - Computational Intelligence in Big Data analysis.pdf",
    type: "application/pdf"
  )

  end
  def ss5
    filepath= Dir.pwd + '/app/assets/downloads/SS5.pdf'
    send_file(
    filepath,
    filename: "SS5 - Computational Intelligence using Data Sciences.pdf",
    type: "application/pdf"
  )

  end
  def ss6
    filepath= Dir.pwd + '/app/assets/downloads/SS6.pdf'
    send_file(
    filepath,
    filename: "SS6 - ENGINEERING APPLICATION OF NATURE INSPIRED ALGORITHMS.pdf",
    type: "application/pdf"
  )

  end
  def ss7
    filepath= Dir.pwd + '/app/assets/downloads/SS7.pdf'
    send_file(
    filepath,
    filename: "SS7 - Intelligent Cyber Systems and Security .pdf",
    type: "application/pdf"
  )

  end
  def ss8
    filepath= Dir.pwd + '/app/assets/downloads/SS8.pdf'
    send_file(
    filepath,
    filename: "SS8 - Application of Bio Inspired Computing for Knowledge Discovery and Data Mining.pdf",
    type: "application/pdf"
  )

  end
  def ss9
    filepath= Dir.pwd + '/app/assets/downloads/SS9.pdf'
    send_file(
    filepath,
    filename: "SS9 - Recent Trends in Computing, Communication and Information Technology.pdf",
    type: "application/pdf"
  )

  end
  def ss10
    filepath= Dir.pwd + '/app/assets/downloads/SS10.pdf'
    send_file(
    filepath,
    filename: "SS10 - SOFT COMPUTING TECHNIQUES FOR WIRELESS NETWORKS.pdf",
    type: "application/pdf"
  )

  end
  def ss11
    filepath= Dir.pwd + '/app/assets/downloads/SS11.pdf'
    send_file(
    filepath,
    filename: "SS11 - COMMUNICATIONS AND INFORMATION SYSTEM SECURITY .pdf",
    type: "application/pdf"
  )

  end
  def ss12
    filepath= Dir.pwd + '/app/assets/downloads/SS12.pdf'
    send_file(
    filepath,
    filename: "SS12 - NEXT GENERATION NETWORKING AND WIRELESS COMMUNICATIONS.pdf",
    type: "application/pdf"
  )

  end
  def ss13
    filepath= Dir.pwd + '/app/assets/downloads/SS13.pdf'
    send_file(
    filepath,
    filename: "SS13 - Recent Trends and Advances in Fuzzy System in Engineering & Management .pdf",
    type: "application/pdf"
  )

  end
  def ss14
    filepath= Dir.pwd + '/app/assets/downloads/SS14.pdf'
    send_file(
    filepath,
    filename: "SS14 - Current Trends in Software Engineering and Machine Learning.pdf",
    type: "application/pdf"
  )

  end
  def ss15
    filepath= Dir.pwd + '/app/assets/downloads/SS15.pdf'
    send_file(
    filepath,
    filename: "SS15 - INTELLIGENT NETWORKING & ADVANCE SYSTEMS.pdf",
    type: "application/pdf"
  )

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
