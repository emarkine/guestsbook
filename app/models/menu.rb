class Menu < ActiveRecord::Base
  default_scope { order(:position) }
  has_and_belongs_to_many :users
  validates :name, :presence => true, :uniqueness => true
  validates :ref, :presence => true


  def self.list(user)
    Menu.all.collect do |menu|
      menu
    end
  end

  def user_id
    nil
  end

  def user=(u)
  end

  def to_s
    "#{name} -> #{ref}"
  end

end
