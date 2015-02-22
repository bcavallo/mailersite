class UserMailer < ActionMailer::Base
  default from: "brencavallo@gmail.com"

  def message_email(user, message)
    @message = message
    @user = user
    @recep = user
    while @recep == user 
      @recep = User.offset(rand(User.count)).first
    end
    mail(to: @recep.email, subject: "Here's a friendly message!")
  end
end
