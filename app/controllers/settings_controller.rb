class SettingsController < ApplicationController

  def index
    @settings = Setting.unscoped
  end

  def edit
    @setting = Setting.unscoped.find(params[:id])
  end

end
