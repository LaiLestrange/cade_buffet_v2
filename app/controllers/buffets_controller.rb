class BuffetsController < ApplicationController
  def new
    @buffet = Buffet.new
  end

  def create
    @buffet = Buffet.new(buffet_params)

    if @buffet.save

    else
      flash.now[:notice] = "Não foi possível savar buffet"
      render 'new'
    end

  end


  private
  def buffet_params
    params.require(:buffet).permit(
      :brand_name,
      :company_name,
      :registration_number,
      :phone_number,
      :email,
      :full_address,
      :state,
      :city,
      :zip_code,
      :description
    )
  end
end
