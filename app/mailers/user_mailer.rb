class UserMailer < ActionMailer::Base
  default from: "brencavallo@gmail.com"

  def message_email(message)
    @message = message
    @recep = User.offset(rand(User.count)).first
    mail(to: @recep.email, subject: "Here's a friendly message!")
  end
end
