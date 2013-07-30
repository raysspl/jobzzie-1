require "spec_helper"

describe UserMailer do
  describe "reset_email" do
    let(:mail) { UserMailer.reset_email }

    it "renders the headers" do
      mail.subject.should eq("Reset email")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "register_email" do
    let(:mail) { UserMailer.register_email }

    it "renders the headers" do
      mail.subject.should eq("Register email")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
