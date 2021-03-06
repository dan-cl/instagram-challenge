class Post < ApplicationRecord
  has_attached_file :image, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments,
        -> {extending WithUserAssociationExtension},
        dependent: :destroy
  validates :caption, length: {minimum: 1}
end
