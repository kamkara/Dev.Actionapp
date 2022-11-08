class Article < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_one_attached :heroImg
  

  STATUS= ["Encours", "Approbation", "La une", "Archive"]
  validates :title, :content, :published, :slug, presence: true
  validates :title, :content, length: { minimum:5}


  ################## SLUG ###############
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  def should_generate_new_friendly_id?
   title_changed?
  end
end
