class BestgamesController < ApplicationController
  # GET /bestgames
  # GET /bestgames.json
  def index
    @bestgames = Bestgame.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bestgames }
    end
  end

  # GET /bestgames/1
  # GET /bestgames/1.json
  def show
    @bestgame = Bestgame.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bestgame }
    end
  end

  # GET /bestgames/new
  # GET /bestgames/new.json
  def new
    @bestgame = Bestgame.new
    @player_select_data = Player.all.collect{|p| [p.name, p.id]}
    @lineup_select_data = ""
    @non_lineup_select_data = Player.all.collect{|p| [p.name, p.id]}

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bestgame }
    end
  end

  # GET /bestgames/1/edit
  def edit
    @bestgame = Bestgame.find(params[:id])
    @player_select_data = Player.all.collect{|p| [p.name, p.id]}
    @lineup_select_data = Bestlineup.find_all_by_bestgame_id(params[:id]).collect{|l| [l.player.name, l.player.id]}
    @non_lineup_select_data = Player.all.collect{|p| [p.name, p.id]} - Bestlineup.find_all_by_bestgame_id(params[:id]).collect{|l| [l.player.name, l.player.id]}
  end

  # POST /bestgames
  # POST /bestgames.json
  def create
    @bestgame = Bestgame.new(params[:bestgame])

    respond_to do |format|
      if @bestgame.save
        format.html { redirect_to @bestgame, notice: 'Bestgame was successfully created.' }
        format.json { render json: @bestgame, status: :created, location: @bestgame }
      else
        format.html { render action: "new" }
        format.json { render json: @bestgame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bestgames/1
  # PUT /bestgames/1.json
  def update
    @bestgame = Bestgame.find(params[:id])

    respond_to do |format|
      if @bestgame.update_attributes(params[:bestgame])
        format.html { redirect_to @bestgame, notice: 'Bestgame was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bestgame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bestgames/1
  # DELETE /bestgames/1.json
  def destroy
    @bestgame = Bestgame.find(params[:id])
    @bestgame.destroy

    respond_to do |format|
      format.html { redirect_to bestgames_url }
      format.json { head :no_content }
    end
  end
end
