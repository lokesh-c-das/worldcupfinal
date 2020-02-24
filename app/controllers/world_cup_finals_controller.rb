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

  def new
    world_cup_final = WorldCupFinal.new
    respond_to do |format|
      format.html{render :new, locals:{world_cup_final:world_cup_final}}
    end
  end

  def create
    wc_final = WorldCupFinal.new(params.require(:world_cup_final).permit(:year,:champion, :champion_score, :runner_up, :runner_up_score))
    respond_to do |format|
      format.html do 
        if wc_final.save
          flash[:success] = "New World cup added successfully!"
          redirect_to world_cup_finals_url
        else
          flash.now[:danger] = "Error: World cup could not be saved"
          render :new, locals:{world_cup_final:wc_final}
        end
      end
    end
  end

  def edit
    world_cup_final = WorldCupFinal.find(params[:id])
    respond_to do |format|
      format.html{render :edit, locals:{world_cup_final:world_cup_final}}
    end
  end
  def update
    wc_final = WorldCupFinal.find(params[:id])
    respond_to do |format|
      format.html do 
        if wc_final.update(params.require(:world_cup_final).permit(:year,:champion, :champion_score, :runner_up, :runner_up_score))
          flash[:success] = "New World cup updated successfully!"
          redirect_to world_cup_finals_url
        else
          flash.now[:danger] = "Error: World cup could not be updated"
          render :new, locals:{world_cup_final:wc_final}
        end
      end
    end
  end
  def destroy
    world_cup_final = WorldCupFinal.find(params[:id])
    world_cup_final.destroy
    respond_to do |format|
      format.html do
        # success message
        flash[:success] = 'Question removed successfully'
        # redirect to index
        redirect_to world_cup_finals_url
      end
    end
  end
end
