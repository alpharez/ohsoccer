class GamesController < ApplicationController

  def index
    @leagues = League.all
    @games = Game.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @leagues }
    end
  end

  def show
    @game = Game.find(params[:id])
    @hometeam = Team.find(@game.hometeam_id)
    @awayteam = Team.find(@game.awayteam_id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @game }
    end
  end

  def new
    @game = Game.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @game }
    end
  end

  def create
    @game = Game.create!(params[:game])

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, :notice => 'Team was successfully created.' }
        format.json { render :json => @game, :status => :created, :location => @game }
      else
        format.html { render :action => "new" }
        format.json { render :json => @game.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }
    end
  end

end
