class Category < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true

  has_many :pins

  # def to_param
  #   "#{name.parameterize}"
  # end

end
