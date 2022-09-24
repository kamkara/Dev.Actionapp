class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @MembersList = User.all#Bemembership.all.order('created_at desc')
    @ProjetsList = User.all#Projet.all
    @CampagnesList = User.all#Campagne.all
  end

  def home
  end
end
