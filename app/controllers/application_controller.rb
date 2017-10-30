class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :init, :set_locale


  def init
    @title = I18n.t :title
    # почему-то не сбрасываются флешки
    # flash[:notice] = nil
    # flash[:info] = nil
    # flash[:error] = nil
    #ActionMailer::Base.default_url_options = {:host => request.host_with_port}
    @controller = params[:controller]
    if @controller != 'site'
      @object_name = @controller.singularize
      begin
        @model = @controller.singularize.split("/").map { |c| c.capitalize }.join("::").constantize if @controller
      rescue Exception => e
        puts e
      end
      @object = @model.find_by_id(params[:id]) if (params[:id] && @model)
      # rescue Exception => e
      #   flash[:error] = t(:message_exception, :message => e.message)
      # end
    end
    @action = params[:action]
    if User.logged?(session)
      @user = User.current(session)
      session[:user] = @user.id
      session[:refresh] ||= 5
    end
    flash[:info] = "info"
    flash[:notice] = "notice"
    flash[:alert] = "alert"
    flash[:error] = "error"
  end

  def authenticate_user!
    User.logged?(session)
  end

  def set_locale
    if params[:locale]
      I18n.locale = params[:locale]
    elsif session[:locale]
      I18n.locale = session[:locale]
      #elsif extract_locale_from_accept_language_header
      #  I18n.locale = extract_locale_from_accept_language_header
    else
      I18n.locale = I18n.default_locale
    end
  end


end
