class WelcomeController < ApplicationController
  def index
    @HomeMedias = Medium.all
    redirect_to dashboard_path if user_signed_in?
    @HomeArticles = Article.where("status= ?","La une").order("created_at desc").take(7)
    @HomeProjets = Projet.where("status= ?","La une").order("created_at desc").take(2) #Projet a la lune
   # @HomeCampagnes = Campagne.order("created_at desc").take(2)#4 dernieres campagnes
    @HomeCampagnes = Campagne.where("status= ?","La une").order("created_at desc").take(2)#4 dernieres campagnes
    @HomeBenevols = Benevol.where("status= ?","La une").order("created_at desc").take(2)#3 dernieres benevol
  end
end
