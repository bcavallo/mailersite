class UserMailer < ActionMailer::Base
  default from: "brencavallo@gmail.com"

  def message_email()
    @user = User.offset(rand(User.count)).first
    mail(to: @user.email, subject: "Here's a friendly message!")
  end
end
