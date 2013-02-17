class RleaguesController < ApplicationController
  # GET /rleagues
  # GET /rleagues.json
  def index
    @rleagues = Rleague.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rleagues }
    end
  end

  # GET /rleagues/1
  # GET /rleagues/1.json
  def show
    @rleague = Rleague.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rleague }
    end
  end

  # GET /rleagues/new
  # GET /rleagues/new.json
  def new
    @rleague = Rleague.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rleague }
    end
  end

  # GET /rleagues/1/edit
  def edit
    @rleague = Rleague.find(params[:id])
  end

  # POST /rleagues
  # POST /rleagues.json
  def create
    @rleague = Rleague.new(params[:rleague])

    respond_to do |format|
      if @rleague.save
        format.html { redirect_to @rleague, notice: 'Rleague was successfully created.' }
        format.json { render json: @rleague, status: :created, location: @rleague }
      else
        format.html { render action: "new" }
        format.json { render json: @rleague.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rleagues/1
  # PUT /rleagues/1.json
  def update
    @rleague = Rleague.find(params[:id])

    respond_to do |format|
      if @rleague.update_attributes(params[:rleague])
        format.html { redirect_to @rleague, notice: 'Rleague was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rleague.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rleagues/1
  # DELETE /rleagues/1.json
  def destroy
    @rleague = Rleague.find(params[:id])
    @rleague.destroy

    respond_to do |format|
      format.html { redirect_to rleagues_url }
      format.json { head :no_content }
    end
  end
end
