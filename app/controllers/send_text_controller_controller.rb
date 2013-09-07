class SendTextControllerController < ApplicationController
  
  def index
    end

    def send_text_message
      number_to_send_to = params[:number_to_send_to]

      twilio_sid = "abc123"
      twilio_token = "foobar"
      twilio_phone_number = "6165555555"

      @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

      @twilio_client.account.sms.messages.create(
        :from => "+1#{twilio_phone_number}",
        :to => number_to_send_to,
        :body => "This is a message to alert you that your laptop has ben moved enough to trigger the alarm"
      )
    end
    
     helper :all
  
end
