class ApplicationController < ActionController::Base
  before_action :app_start

  private

  def app_start
    @manager_app = manager_signed_in?
    @customer_app = customer_signed_in?
    @user_app = !@manager_app && !@customer_app
    current_path = request.fullpath

    if @manager_app
      buffet = current_manager.buffet
      unless buffet.present?
        redirect_to new_buffet_path, notice: "Cadastre seu Buffet!" if current_path == root_path
      end
    end

  end
end
