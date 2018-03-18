class SiteController < ApplicationController

  def index
  end

  def locale
    session[:locale] = params[:locale]
    I18n.locale = session[:locale]
    redirect_to params[:path] if params[:path]
  end

end
