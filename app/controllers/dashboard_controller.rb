class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @MembersList = User.all#Bemembership.all.order('created_at desc')
    @ProjetsList = User.all#Projet.all
    @CampagnesList = User.all#Campagne.all
  end

  def home
  end

  def members
    @MembersList = Bemembership.all.order('created_at desc')
    @MembersMonthly = @MembersList.monthlyActif
    @MembersWeekly = @MembersMonthly.weeklyActif
  end

  def campagnes
    
  end

  def projets
    
  end

  def bememberships
    
  end

end
