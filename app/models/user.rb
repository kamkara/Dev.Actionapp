class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable


  has_many :privacies
  has_many :terms
  has_many :charts
  has_many :posts
  has_many :articles
  has_many :abouts
  has_many :projets
  has_many :campagnes
  has_many :benevols
  #has_many :blogs
  #has_many :legals
  #has_many :privates
  has_one_attached :avatar
  
  STATUS= ["Editeur", "Level 2", "Level 3"]

  def full_name
    "#{self.first_name} #{self.last_name}" 
  end

  validates :first_name, :last_name, :full_name, :email, :password,
              :country, :full_contact, presence: true
    
   validates :full_name,presence: true,
              format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
              length: { minimum:5, maximum: 30,
              message: "%{value} verifier votre nom complet"}

                

   ################## SLUG ###############
  extend FriendlyId
  friendly_id :full_name, use: :slugged
  
  def should_generate_new_friendly_id?
    full_name_changed?
  end 
 
  
  ################## BEFORE SAVE  #########
  before_save do
    #self.country            = country.strip.squeeze(" ")
    self.full_contact            = full_contact .strip.squeeze(" ")
    self.first_name         = first_name.strip.squeeze(" ").downcase.capitalize
    self.last_name          = last_name.strip.squeeze(" ").downcase.capitalize
  end

  
end
