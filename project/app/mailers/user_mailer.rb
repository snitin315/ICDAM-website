class UserMailer < ApplicationMailer
  def contact_us(name,email,content,subject)
    @name=name
    @email=email
    @content=content
    @subject=subject
    mail to: "prnv_singhal@yahoo.co.in", subject: "response to your website"
  end

  def special_submission(name,email,number,introduction,objective,paper_count,file)
    # byebug
    @name=name
    @email=email
    @number=number
    @introduction=introduction
    @objective=objective
    @paper_count=paper_count
    if file !=nil
      attachments['cv.pdf'] =File.open(Dir.pwd + "/public/uploads/" + file, 'rb'){|f| f.read}
    end
    mail to: "prnv_singhal@yahoo.co.in", subject: "response to your special_submission"

  end






end
