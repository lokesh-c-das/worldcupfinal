class WorldCupFinalsController < ApplicationController
  def index
    finals = WorldCupFinal.all()
    respond_to do |format|
      format.html{render :index, locals:{finals:finals}}
    end
  end
end
