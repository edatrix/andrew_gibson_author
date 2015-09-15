class FanMailer < ApplicationMailer

  def notify(user)
    @user = user
    mail(to: "andrew.j.gibs@gmail.com", subject: "#{user.name} is interested in your book, The Bloodless.")
  end

end
