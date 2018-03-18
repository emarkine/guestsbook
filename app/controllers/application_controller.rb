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
    # flash[:info] = "info"
    # flash[:notice] = "notice"
    # flash[:alert] = "alert"
    # flash[:error] = "error"
  end

  def authenticate_user!
    User.logged?(session)
  end

  def set_locale
    if params[:locale]
      I18n.locale = params[:locale]
      session[:locale] = I18n.locale
    elsif session[:locale]
      I18n.locale = session[:locale]
    elsif extract_locale_from_accept_language_header
       I18n.locale = extract_locale_from_accept_language_header
       session[:locale] = I18n.locale
    else
      I18n.locale = I18n.default_locale
      session[:locale] = I18n.locale
    end
  end

  def extract_locale_from_accept_language_header
    parsed_locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale : nil
  end


end
