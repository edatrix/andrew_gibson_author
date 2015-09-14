class StaticController < ApplicationController

  def index
  end

  def about
  end

  def contact
    if request.
      @contact = OpenStruct.new(params[:contact])
      ContactFormMailer.form_submitted_email(@contact).deliver_now
      format.html { redirect_to :back, :notice => "Your message has been submitted." }
    end
  end

  def book
  end

end