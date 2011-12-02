class HugPrescriptionsController < ApplicationController
  
  def create
    #@hug_prescription = current_user.hug_prescriptions.build(params[:hug_prescription])
  end
  
  def new
    
    @hug_prescription = HugPrescription.new
  end
end
