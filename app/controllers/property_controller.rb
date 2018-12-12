class PropertyController < ApplicationController
  before_action :authenticate_user!

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    respond_to do |format|
      if @property.save
        TwilioTextMessenger.new(@message).call
        format.html { redirect_to @property, notice: 'Logement ajouté.' }
        format.json { render :index, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    if current_user && current_user.admin
      @property = Property.all
    else
      @property = current_user.properties
    end
  end

  def show
    if current_user.id == Property.find(params[:id]).user_id || current_user.admin
      @property = Property.find(params[:id])
    else
      redirect_to property_index_path, notice: "Pas touche"
    end
  end

  def edit
    if current_user.id == Property.find(params[:id]).user_id || current_user.admin
      @property = Property.find(params[:id])
    else
      redirect_to property_index_path, notice: "Pas touche"
    end
  end

  def update
    @property = Property.find(params[:id])
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: "Informations modifiées avec succès." }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
      respond_to do |format|
        format.html { redirect_to property_index_path, notice: 'Logement supprimé.' }
        format.json { head :no_content }
      end
  end

  private

  def property_params
    params.require(:property).permit(
      :additional_content,
      :street_number,
      :route,
      :locality,
      :administrative_area_level_1,
      :country,
      :postal_code,
      :full_address,
      :area,
      :sleeps,
      :rooms,
      :user_id,
      images: []
    )
  end

end
