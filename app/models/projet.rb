class Projet < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  #Projet.all.with_rich_text_content # Preload the body without attachments.
  #Projet.all.with_rich_text_content_and_embeds # Preload both body and attachments.
  has_one_attached :heroImg

  STATUS= ["Encours", "Approver", "La une", "Archive"]
  validates :title, :content, :published, :amount, presence: true
  validates :title, :content, length: { minimum:20}


  ################## SLUG ###############
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  def should_generate_new_friendly_id?
   title_changed?
  end
end
