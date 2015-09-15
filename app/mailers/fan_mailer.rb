class FanMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.fan_mailer.notify.subject
  #
  def notify(user)
    @user = user
    mail(to: "cluhring@gmail.com", subject: "#{user.name} is interested in your book, The Bloodless.")
  end

end
