class UserMailer < ActionMailer::Base
  default from: "from@jobzzie.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_email.subject
  #
  def reset_email(user)
    @user = user

    mail to: @user.email, subject: "Reset your Jobzzie credentials!"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.register_email.subject
  def register_email(user)
    @user = user

    mail(to: @user.email, subject: 'Please complete your Jobzzie registration.')
  end
end