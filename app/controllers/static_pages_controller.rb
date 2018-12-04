class StaticPagesController < ApplicationController

  def home

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

  def subscribe
    # Requête Mailer
    @list_id = Rails.application.credentials.dig(:listid)
    gibbon = Gibbon::Request.new

     gibbon.lists(@list_id).members.create(
       body: {
         email_address: params[:email][:address],
         status: "subscribed"
       }
     )

     respond_to do |format|
       format.json{render :json => { :message => "You have been Successfully added to the list! :)" }}
         end
   end

end
