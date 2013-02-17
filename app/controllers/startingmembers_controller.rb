class StartingmembersController < ApplicationController
  # GET /startingmembers
  # GET /startingmembers.json
  def index
    @startingmembers = Startingmember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @startingmembers }
    end
  end

  # GET /startingmembers/1
  # GET /startingmembers/1.json
  def show
    @startingmember = Startingmember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @startingmember }
    end
  end

  # GET /startingmembers/new
  # GET /startingmembers/new.json
  def new
    @startingmember = Startingmember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @startingmember }
    end
  end

  # GET /startingmembers/1/edit
  def edit
    @startingmember = Startingmember.find(params[:id])
  end

  # POST /startingmembers
  # POST /startingmembers.json
  def create
    @startingmember = Startingmember.new(params[:startingmember])
    @startingmember.players

    respond_to do |format|
      if @startingmember.save
        format.html { redirect_to @startingmember, notice: 'Startingmember was successfully created.' }
        format.json { render json: @startingmember, status: :created, location: @startingmember }
      else
        format.html { render action: "new" }
        format.json { render json: @startingmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /startingmembers/1
  # PUT /startingmembers/1.json
  def update
    @startingmember = Startingmember.find(params[:id])

    respond_to do |format|
      if @startingmember.update_attributes(params[:startingmember])
        format.html { redirect_to @startingmember, notice: 'Startingmember was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @startingmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startingmembers/1
  # DELETE /startingmembers/1.json
  def destroy
    @startingmember = Startingmember.find(params[:id])
    @startingmember.destroy

    respond_to do |format|
      format.html { redirect_to startingmembers_url }
      format.json { head :no_content }
    end
  end
end
