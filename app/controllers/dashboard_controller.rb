class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @MembersList = Bemembership.dashboard
    @ProjetsList = Projet.dashboard
    @CampagnesList = Campagne.dashboard
  end

  def home
  end

  def members
    @MembersList = Bemembership.dashboard
    @MembersMonthly = @MembersList.monthlyActif
    @MembersWeekly = @MembersMonthly.weeklyActif
  end

  def articles
    @Articles = Article.dashboard
    @ArticlesMonthly = @Articles.monthlyActif
    @ArticlesWeekly = @ArticlesMonthly.weeklyActif
  end
    
  def campagnes
    @Campagnes = Campagne.all.order('created_at desc')
    @CampMonthly = @Campagnes.monthlyActif
    @CampWeekly = @CampMonthly.weeklyActif
  end

  def projets
    
  end

  def bememberships
    
  end

end
