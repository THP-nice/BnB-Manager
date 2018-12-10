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
      body: "Cher utilisateur votre bien immobilier a bien été enregistré, nous allons prendre contact avec vous sous les plus bref délais, merci pour votre confiance !"
    })
  end
end
