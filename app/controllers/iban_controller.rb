class IbanController < ApplicationController
    before_action :authenticate_user!

  def new
    @iban = Iban.new
  end

  def create
    @iban = Iban.new(iban_params)
      if @iban.save
        redirect_to iban_index_path, notice: 'Iban enregistré.'
      else
        render :new, notice: 'Une erreur est survenue lors de la saisie, veuillez réessayer.'
      end
  end

  def index
    if current_user.id == Iban.last.user_id
      @iban = Iban.last
    else
      redirect_to iban_index_path, notice: "Oups, cet accès vous est interdit."
    end
  end

  def edit
    if current_user.id == Iban.find(params[:id]).user_id
      @iban = Iban.find(params[:id])
    else
      redirect_to iban_index_path, notice: "Oups, cet accès vous est interdit."
    end
  end

  def update
    @iban = Iban.find(params[:id])
      if @iban.update(iban_params)
        redirect_to iban_index_path, notice: 'Iban enregistré.'
      else
        render :edit, notice: 'Une erreur est survenue lors de la saisie, veuillez réessayer.'
      end
  end

  private

  def iban_params
    params.require(:iban).permit(:user_id, :account)
  end

end
