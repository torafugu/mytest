class BestlineupsController < ApplicationController
  # GET /bestlineups
  # GET /bestlineups.json
  def index
    @bestlineups = Bestlineup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bestlineups }
    end
  end

  # GET /bestlineups/1
  # GET /bestlineups/1.json
  def show
    @bestlineup = Bestlineup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bestlineup }
    end
  end

  # GET /bestlineups/new
  # GET /bestlineups/new.json
  def new
    @bestlineup = Bestlineup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bestlineup }
    end
  end

  # GET /bestlineups/1/edit
  def edit
    @bestlineup = Bestlineup.find(params[:id])
  end

  # POST /bestlineups
  # POST /bestlineups.json
  def create
    @bestlineup = Bestlineup.new(params[:bestlineup])

    respond_to do |format|
      if @bestlineup.save
        format.html { redirect_to @bestlineup, notice: 'Bestlineup was successfully created.' }
        format.json { render json: @bestlineup, status: :created, location: @bestlineup }
      else
        format.html { render action: "new" }
        format.json { render json: @bestlineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bestlineups/1
  # PUT /bestlineups/1.json
  def update
    @bestlineup = Bestlineup.find(params[:id])

    respond_to do |format|
      if @bestlineup.update_attributes(params[:bestlineup])
        format.html { redirect_to @bestlineup, notice: 'Bestlineup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bestlineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bestlineups/1
  # DELETE /bestlineups/1.json
  def destroy
    @bestlineup = Bestlineup.find(params[:id])
    @bestlineup.destroy

    respond_to do |format|
      format.html { redirect_to bestlineups_url }
      format.json { head :no_content }
    end
  end
end
