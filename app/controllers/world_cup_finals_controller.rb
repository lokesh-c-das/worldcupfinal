class WorldCupFinalsController < ApplicationController
  def index
    finals = WorldCupFinal.all()
    respond_to do |format|
      format.html{render :index, locals:{finals:finals}}
    end
  end

  def show
    world_cup_final = WorldCupFinal.find(params[:id])
    respond_to do |format|
      format.html{render :show, locals:{world_cup_final:world_cup_final}}
    end
  end
end
