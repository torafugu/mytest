class BettergamesController < ApplicationController
  # GET /bettergames
  # GET /bettergames.json
  def index
    @bettergames = Bettergame.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bettergames }
    end
  end

  # GET /bettergames/1
  # GET /bettergames/1.json
  def show
    @bettergame = Bettergame.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bettergame }
    end
  end

  # GET /bettergames/new
  # GET /bettergames/new.json
  def new
    @bettergame = Bettergame.new
    @player_select_data = Player.all.collect{|p| [p.name, p.id]}

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bettergame }
    end
  end

  # GET /bettergames/1/edit
  def edit
    @bettergame = Bettergame.find(params[:id])
    @player_select_data = Player.all.collect{|p| [p.name, p.id]}
  end

  # POST /bettergames
  # POST /bettergames.json
  def create
    @bettergame = Bettergame.new(params[:bettergame])

    respond_to do |format|
      if @bettergame.save
        format.html { redirect_to @bettergame, notice: 'Bettergame was successfully created.' }
        format.json { render json: @bettergame, status: :created, location: @bettergame }
      else
        format.html { render action: "new" }
        format.json { render json: @bettergame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bettergames/1
  # PUT /bettergames/1.json
  def update
    @bettergame = Bettergame.find(params[:id])

    respond_to do |format|
      if @bettergame.update_attributes(params[:bettergame])
        format.html { redirect_to @bettergame, notice: 'Bettergame was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bettergame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bettergames/1
  # DELETE /bettergames/1.json
  def destroy
    @bettergame = Bettergame.find(params[:id])
    @bettergame.destroy

    respond_to do |format|
      format.html { redirect_to bettergames_url }
      format.json { head :no_content }
    end
  end
end
