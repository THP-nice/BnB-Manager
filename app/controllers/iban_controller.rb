class IbanController < ApplicationController
    before_action :authenticate_user!

  def new
    if current_user.iban == nil
      @iban = Iban.new
    else
      redirect_to iban_index_path, notice: "Iban déjà existant."
    end

  end

  def create
    @iban = Iban.new(iban_params)
      if @iban.save
        redirect_to iban_index_path, notice: "Iban enregistré."
      else
        render :new, notice: "Une erreur est survenue lors de la saisie, veuillez réessayer."
      end
  end

  def index
    if current_user.iban == nil
      redirect_to new_iban_url, notice: "Aucun iban associé à ce compte."
    elsif current_user && current_user.admin
      @iban = Iban.all
    else
      @iban = current_user.iban
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
