class UserMailer < ActionMailer::Base
  default from: "from@jobzzie.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_email.subject
  #
  def reset_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.register_email.subject
  #
  def welcome_email(user)
    @user = user
    @url = 'http://jobzzie.com/login'
    mail(to: @user.email, subject: 'Welcome to Jobzzie!')
  end
end
