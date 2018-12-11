class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call

    client = Twilio::REST::Client.new
    client.messages.create({
      from: Rails.application.credentials.twilio_phone_number,
      to: +33686422379,
      body:"Nous vous informons qu'un nouveau bien immobilier vient d'être enregistrer, veuillez prendre rapidement contact avec l'utilisateur !"
    })
  end
end
