require "rails_helper"

RSpec.describe FanMailer, :type => :mailer do
  describe "notify" do
    let(:user) {user = User.create(name: "Pete Mitchell", email: "example@example.com", text: "howdy") }
    let(:mail) { FanMailer.notify(user).deliver }

    it "renders the headers" do
      expect(mail.subject).to start_with(user.name)
      expect(mail.to).to eq(["andrew.j.gibs@gmail.com"])
      expect(mail.from).to eq(["no-reply@andrew-gibson-author.herokuapp.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("howdy")
    end
  end

  it "creates a notification to Andrew" do
     user = User.create(name: "Pete Mitchell", email: "lespath@gmail.com", text: "howdy")
     FanMailer.notify(user).deliver
     result = ActionMailer::Base.deliveries.last
     expect(result)
     expect(result.subject).to match("Pete Mitchell is interested in your book, The Bloodless.")
   end
end
