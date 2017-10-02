class UserMailer < ApplicationMailer
  def contact_us(name,email,content,subject)
    @name=name
    @email=email
    @content=content
    @subject=subject
    mail to: "prnv_singhal@yahoo.co.in", subject: "response to your website"
  end





end
