class TreatmentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :update
  def index
  end

  def new
  	@type_treats = ["Remède externe", "Plantes", " Alimentation", "Comportement"]
    @treatment = Treatment.new()
  end

  def create
  	@treatment = Treatment.new(treatment_params)

    if @treatment.save
      p "New treatment created!"
      redirect_to root_path
    else
      render new_treatment_path
    end

  end 

  def show
  	@treatment = Treatment.find(params[:id])
  end 

  def edit
    @type_treats = ["Remède externe", "Plantes", " Alimentation", "Comportement"]
    # if current_user.id == Mission.find(params[:id]).user_id
      @treatment = Treatment.find(params[:id])
    # else 
    #   flash[:warning] = "You're not able to edit other users"
    #   redirect_to root_path
    # end 
  end

  def update
    @treatment = Treatment.find(params[:id])
    @treatment.update(treatment_params)
    redirect_to treatment_path(@treatment.id)
  end

  def destroy
    @treatment = Treatment.find(params[:id])
    @treatment.destroy
    p "treatment deleted"
    redirect_to root_path
  end

  private

  def treatment_params
    params.require(:treatment).permit(:name, :description, :type_t)
  end 
end
