class BuffetsController < ApplicationController
  before_action :authenticate_manager!, only: [:create, :index]
  def new
    @buffet = Buffet.new
  end

  def create
    @buffet = Buffet.new(buffet_params)
    @buffet.manager = current_manager unless @buffet.manager.present?

    if @buffet.save
      redirect_to buffet_path(@buffet), notice: "Buffet cadastrado com sucesso!"
    else
      flash.now[:notice] = "Não foi possível savar buffet"
      render 'new'
    end
  end

  def index
    if current_manager.buffet.present?
      @buffet = current_manager.buffet
      render 'show'
    else
      @buffet = Buffet.new(manager: current_manager)
      render 'new'
    end
  end

  def show
    @buffet = Buffet.find(params[:id])
  end


  private
  def buffet_params
    params.require(:buffet).permit(
      :name,
      :company_name,
      :license_number,
      :phone_number,
      :email,
      :description
    )
  end
end
