class UsersController < ApplicationController
  before_action :authenticate_user!, :except => :login

  before_action do
    @user = User.find(params[:id]) unless params[:id].blank?
  end

  def index
    @users = User.all
    @brokers = @user.brokers
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = t(:message_create, :model => @user.name)
      redirect_to @broker
    else
      render action: :new
    end
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:notice] = t(:message_update, :model => @user.name)
      redirect_to @user
    else
      render action: :edit
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = t(:message_destroy, :model => @user.name)
    redirect_to action: :index
  end

  def select
    session[:user] = @user.id
    redirect_to action: :show
  end

  def login
    @user = User.find_by_email params[:email]
    # :password
  end

  def logout

  end

end
