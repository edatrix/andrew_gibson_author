class PublicationOrders::OrderMailer < ActionMailer::Base
  default :from => "noreply@andrewgibson.com"

  def form_submitted_email(contact)
    @contact = contact
    # mail(:to => "andrew.j.gibs@gmail.com", :subject => "You have received a comment")
    mail(:to => "lespath@gmail.com", :subject => "You have received a comment")
  end

end