class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@andrew-gibson-author.herokuapp.com"
  layout 'mailer'
end
