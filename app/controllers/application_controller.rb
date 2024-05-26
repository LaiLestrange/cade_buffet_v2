class ApplicationController < ActionController::Base
  before_action :app_start

  private

  def app_start
    @manager_app = manager_signed_in?
    @customer_app = customer_signed_in?
    @user_app = !@manager_app && !@customer_app
    @root_path = root_path if @user_app
    current_path = request.fullpath

    if @manager_app
      buffet = current_manager.buffet
      @root_path = manager_root_path
      unless buffet.present?
        @buffet = Buffet.new
        # available_paths = [[new_buffet_path, destroy_manager_session_path],[root_path, buffets_path]]
        # flash.now[:notice] = "Cadastre seu Buffet!" if current_manager.sign_in_count > 1
        # return redirect_to new_buffet_path unless available_paths.first.include? current_path
        # render 'buffets/new' if available_paths.last.include? current_path
      end
    end

  end
end
