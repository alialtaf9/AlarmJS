class SendTextControllerController < ApplicationController
  
  def index
    end

    def send_text_message
      number_to_send_to = params[:number_to_send_to]

      twilio_sid = "AC89803551e8f08fdfe1b884728f51d142"
      twilio_token = "e9a0d9fec0bbebe0ae5cf1065e53df77"
      twilio_phone_number = "2158390033"

      @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

      @twilio_client.account.sms.messages.create(
        :from => "+12158390033",
        :to => number_to_send_to,
        :body => "This is a message to alert you that your laptop has ben moved enough to trigger the alarm"
      )
    end
    
     helper :all
  
end
