class IbanController < ApplicationController
    before_action :authenticate_user!

  def new
    @iban = Iban.new
  end

  def create
    @iban = Iban.new(iban_params)
      if @iban.save
        redirect_to edit_user_registration_path, notice: 'Iban enregistré.'
      else
        render :new, alert: 'Une erreur est survenue lors de la saisie, veuillez réessayer.'
      end
  end

  def edit
  end

  def update
  end

  private

  def iban_params
    params.require(:iban).permit(:user_id, :account)
  end

end
