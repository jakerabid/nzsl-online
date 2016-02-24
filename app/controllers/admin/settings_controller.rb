class Admin::SettingsController < ApplicationController # rubocop:disable Style/ClassAndModuleChildren
  layout 'admin'
  before_action :authenticate, :set_title

  def show
    redirect_to edit_admin_settings_path
  end

  def edit
  end

  def update
    if Setting.update_all(params[:settings])
      flash[:notice] = 'Settings were successfully saved.'
    end
    redirect_to edit_admin_settings_path
  end

  private

  def set_title
    @title = 'Administrate Settings'
  end

  def settings_params
    params.require(:settings).permit(:key, :value)
  end
end
