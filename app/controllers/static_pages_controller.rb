class StaticPagesController < ApplicationController
  def home
  	@symptoms = Symptom.all
  end
end
