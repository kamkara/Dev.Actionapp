class Culture < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  scope :principal, -> { where(:slug => "Principal")}
  # Ex:- scope :active, -> {where(:active => true)}
  STS=["Brouillon", "Principal"]
end
