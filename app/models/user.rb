# https://www.railstutorial.org/book/filling_in_the_layout#cha-filling_in_the_layout
# https://www.railstutorial.org/book/modeling_users
# https://www.railstutorial.org/book/log_in_log_out
class User < ApplicationRecord
  # after_initialize :init
  has_and_belongs_to_many :menus
  has_many :brokers
  has_many :entries
  belongs_to :currency
  belongs_to :country

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
  validates :lang, presence: true
  validates :currency, presence: true
  validates :country, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable:, registerable, :timeoutable, :omniauthable, :validatable
  # devise :database_authenticatable, :recoverable, :rememberable, :trackable
  # validates :name, :role, :email, :presence => true


  # attr_reader :test, :admin, :eugene, :trader, :mischa, :lucy

  def to_s
    "User[#{name}]"
  end

  def self.logged?(session)
    session[:user_id]
  end

  def self.current(session)
    User.find session[:user_id]
  end

  def init
    # User.init
  end


  def broker
    brokers.first
  end

  # def pas(password)
  #   update!(:password => password, :password_confirmation => password)
  # end


end
