class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
      respond_to do |format|
      if @message.valid?
        ContactMailer.user_contact(@message).deliver
        # format.html { redirect_to(root_url, :notice => 'Message sent! Thank you for contacting us.') }  
        format.js 
      else
        # render "new"
        format.js 
      end
    end
  end
  
end
