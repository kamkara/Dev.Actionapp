class Campagne < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_one_attached :heroImg


  validates :title, :content, :published, :amount, presence: true
  #validates_comparison_of :start_date, greater_than: -> { Date.today }
  validates :title, :content, length: { minimum:5}


  ################## SLUG ###############
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  def should_generate_new_friendly_id?
   title_changed?
  end
end
