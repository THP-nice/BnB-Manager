class PropertyController < ApplicationController
  before_action :authenticate_user!

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Logement ajouté !' }
        format.json { render :index, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @property = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def edit
    @property = Property.find(params[:id])
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

  private

  def property_params
    params.require(:property).permit(:additional_content, :street_number, :route, :locality,
      :administrative_area_level_1, :country, :postal_code, :user_id)
  end

end
