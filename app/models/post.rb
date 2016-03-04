class Post < ActiveRecord::Base
  validates :user_id, presence: true

  belongs_to :user

  has_attached_file :image, presence: true

  validates :image, presence: true


  has_attached_file :image, styles: { :medium => "640x" }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_many :comments, dependent: :destroy
end
