class StaticPagesController < ApplicationController

  def home
    # Definition de base du mailer - à mettre ailleurs ou pas,
    # je ne sais pas encore où les users s'inscrivent
    @list_id = Rails.application.credentials.dig(:gibbonlistid)
    gibbon = Gibbon::Request.new

   gibbon.lists(@list_id).members.create(
     body: { email_address: params[:email][:address],
             status: "Subscribed"
     }
   )

   respond_to do |format|
     format.json{render :json => { :message => "Email de confirmation envoyé !" }}
       end
  end

  def about

  end

  def contact

  end

  def services

  end

  def prices

  end

  def packs

  end

  def faq

  end

end
