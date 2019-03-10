class SymptomsController < ApplicationController
	skip_before_action :verify_authenticity_token, only: :update
  def index
  end

  def new
  	@symptom = Symptom.new()
  end

  def create
  	@symptom = Symptom.new(symptom_params)

    if @symptom.save
      p "New symptom created!"
      redirect_to root_path
    else
      render new_mission_path
    end

  end 

  def show
    @type_treats = ["Remède externe", "Plantes", " Alimentation", "Comportement"]
  	@symptom = Symptom.find(params[:id])
    @treatments = Treatment.all
  end 

  def edit
    # if current_user.id == Mission.find(params[:id]).user_id
      @symptom = Symptom.find(params[:id])
    # else 
    #   flash[:warning] = "You're not able to edit other users"
    #   redirect_to root_path
    # end 
  end

  def update
    @symptom = Symptom.find(params[:id])
    @symptom.update(symptom_params)
    redirect_to symptom_path(@symptom.id)
  end

  def destroy
    @symptom = Symptom.find(params[:id])
    @symptom.destroy
    p "Symptom deleted"
    redirect_to root_path
  end 

  private

  def symptom_params
    params.require(:symptom).permit(:name, :description)
  end 

end
