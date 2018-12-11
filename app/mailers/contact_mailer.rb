class ContactMailer < ApplicationMailer
  # use your own email address here
  default to: "Bnbmanager.infos@gmail.com"

  def contact_email(contact)
    @contact = contact
    mail(
      from: @contact.email,
      to: "Bnbmanager.infos@gmail.com",
      name: @contact.name,
      email: @contact.email,
      subject: "Nouveau message de #{@contact.name}",
      body: "Demande de la part de #{@contact.name}.
      #{@contact.body}.
      Contact : #{@contact.email}."
    )
  end

end
