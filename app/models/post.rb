class Post < ApplicationRecord
  validates :image, presence: true
  belongs_to :user 

  #has_attached_file :image, styles: { :medium => "640x" }
  has_attached_file :image, default_url:"/image/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :user_id, presence: true  
  validates :image, presence: true  
end
