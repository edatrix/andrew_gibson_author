require "rails_helper"

RSpec.describe FanMailer, :type => :mailer do
  describe "notify" do
    let(:mail) { FanMailer.notify }

    it "renders the headers" do
      expect(mail.subject).to eq("Notify")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  it "creates a notification from Andrew" do
     FanMadiler.notify(user, ‘cluhring@gmail.com’).deliver_now
     result = ActionMailer::Base.deliveries.last
     assert.result
     assert.result.to.include?(‘cluhring@gmail.com’)
     assert_equal “Chris Luhring says you’ve changed.”, result.subject
   end

end
