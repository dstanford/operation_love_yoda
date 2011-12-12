class HugPrescriptionsController < ApplicationController
  
  def create
    @hug_prescription = current_user.hug_prescriptions.build(params[:hug_prescription])
    if @hug_prescription.valid?
      @hug_prescription.save
      redirect_to hug_prescription_path(@hug_prescription)
    else
      render "new" # this will return you to the form and show the errors
    end
  end
  
  def new
    @hug_prescription = HugPrescription.new
  end
end
