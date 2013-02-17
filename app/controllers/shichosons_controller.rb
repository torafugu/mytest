class ShichosonsController < ApplicationController
  # GET /shichosons
  # GET /shichosons.json
  def index
    @shichosons = Shichoson.all(:include => :todofuken)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shichosons }
    end
  end

  # GET /shichosons/1
  # GET /shichosons/1.json
  def show
    @shichoson = Shichoson.find(params[:id], :include => :todofuken)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shichoson }
    end
  end

  # GET /shichosons/new
  # GET /shichosons/new.json
  def new
    @shichoson = Shichoson.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shichoson }
    end
  end

  # GET /shichosons/1/edit
  def edit
    @shichoson = Shichoson.find(params[:id])
  end

  # POST /shichosons
  # POST /shichosons.json
  def create
    @shichoson = Shichoson.new(params[:shichoson])

    respond_to do |format|
      if @shichoson.save
        format.html { redirect_to @shichoson, notice: 'Shichoson was successfully created.' }
        format.json { render json: @shichoson, status: :created, location: @shichoson }
      else
        format.html { render action: "new" }
        format.json { render json: @shichoson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shichosons/1
  # PUT /shichosons/1.json
  def update
    @shichoson = Shichoson.find(params[:id])

    respond_to do |format|
      if @shichoson.update_attributes(params[:shichoson])
        format.html { redirect_to @shichoson, notice: 'Shichoson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shichoson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shichosons/1
  # DELETE /shichosons/1.json
  def destroy
    @shichoson = Shichoson.find(params[:id])
    @shichoson.destroy

    respond_to do |format|
      format.html { redirect_to shichosons_url }
      format.json { head :no_content }
    end
  end
end
