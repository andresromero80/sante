class StaticPagesController < ApplicationController
  def home
  	@symptoms = Symptom.all
  	@treatments = Treatment.all
  end
end
