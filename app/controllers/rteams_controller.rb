class RteamsController < ApplicationController
  # GET /rteams
  # GET /rteams.json
  def index
    @rteams = Rteam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rteams }
    end
  end

  # GET /rteams/1
  # GET /rteams/1.json
  def show
    @rteam = Rteam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rteam }
    end
  end

  # GET /rteams/new
  # GET /rteams/new.json
  def new
    @rteam = Rteam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rteam }
    end
  end

  # GET /rteams/1/edit
  def edit
    @rteam = Rteam.find(params[:id])
  end

  # POST /rteams
  # POST /rteams.json
  def create
    @rteam = Rteam.new(params[:rteam])

    respond_to do |format|
      if @rteam.save
        format.html { redirect_to @rteam, notice: 'Rteam was successfully created.' }
        format.json { render json: @rteam, status: :created, location: @rteam }
      else
        format.html { render action: "new" }
        format.json { render json: @rteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rteams/1
  # PUT /rteams/1.json
  def update
    @rteam = Rteam.find(params[:id])

    respond_to do |format|
      if @rteam.update_attributes(params[:rteam])
        format.html { redirect_to @rteam, notice: 'Rteam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rteams/1
  # DELETE /rteams/1.json
  def destroy
    @rteam = Rteam.find(params[:id])
    @rteam.destroy

    respond_to do |format|
      format.html { redirect_to rteams_url }
      format.json { head :no_content }
    end
  end
end
