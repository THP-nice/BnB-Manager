class StaticPagesController < ApplicationController

  def home
    @contact = Contact.new
  end

  def about

  end

  def contact
    @contact = Contact.new
  end

  def services

  end

  def prices

  end

  def packs

  end

  def faq

  end

  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.valid?
        ContactMailer.contact_email(@contact).deliver_now
        format.html { redirect_to root_path }
        format.js   { flash.now[:success] = "Merci pour votre message, nous vous contacterons prochainement !" }
      else
        format.html { redirect_to contact_path }
        format.js   { flash.now[:error] = "Oups, une erreur est survenue lors de l'envoi de votre message. Veuillez réessayer ultérieurement." }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :body)
  end

end
