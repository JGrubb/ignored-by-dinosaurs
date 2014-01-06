class SettingsController < ApplicationController

  def index
    @settings = Setting.unscoped
  end

  def update
    params[:Setting].each_pair do |setting, value|
      eval("Setting.#{setting} = '#{value}'")
    end
    redirect_to :settings_index
  end

end
