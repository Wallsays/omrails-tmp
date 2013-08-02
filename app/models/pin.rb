class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :category_id
  

  validates :description, presence: true
  # validates :name, presence: true
  validates_attachment :image, presence: true,
                        			 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                        			 size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>"}
  belongs_to :category

end


