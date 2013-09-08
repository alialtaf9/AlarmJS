class SendTextControllerController < ApplicationController

  def index
  end
  
  def main
    session[:phone_number] = params[:phone]
  end

  def send_text_message
    number_to_send_to = session[:phone_number]

    twilio_sid = "AC89803551e8f08fdfe1b884728f51d142"
    twilio_token = "e9a0d9fec0bbebe0ae5cf1065e53df77"
    twilio_phone_number = "2158390033"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
    :from => "+12158390033",
    :to => number_to_send_to,
    :body => "BEE DO BEE DO BEE DO! SOMEONE HAS TOUCHED YOUR COMPUTER!!!! THE THIEF IS NOW LISTENING TO MINIONS! DO NOT PANIC!"
    )
  end
  
  def reset
    if params[:phone] == session[:phone_number]
      redirect_to ""
    else
      redirect_to "/ring_alarm"
    end
  end

  helper :all

end
