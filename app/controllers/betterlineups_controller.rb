class BetterlineupsController < ApplicationController
  # GET /betterlineups
  # GET /betterlineups.json
  def index
    @betterlineups = Betterlineup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @betterlineups }
    end
  end

  # GET /betterlineups/1
  # GET /betterlineups/1.json
  def show
    @betterlineup = Betterlineup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @betterlineup }
    end
  end

  # GET /betterlineups/new
  # GET /betterlineups/new.json
  def new
    @betterlineup = Betterlineup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @betterlineup }
    end
  end

  # GET /betterlineups/1/edit
  def edit
    @betterlineup = Betterlineup.find(params[:id])
  end

  # POST /betterlineups
  # POST /betterlineups.json
  def create
    @betterlineup = Betterlineup.new(params[:betterlineup])

    respond_to do |format|
      if @betterlineup.save
        format.html { redirect_to @betterlineup, notice: 'Betterlineup was successfully created.' }
        format.json { render json: @betterlineup, status: :created, location: @betterlineup }
      else
        format.html { render action: "new" }
        format.json { render json: @betterlineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /betterlineups/1
  # PUT /betterlineups/1.json
  def update
    @betterlineup = Betterlineup.find(params[:id])

    respond_to do |format|
      if @betterlineup.update_attributes(params[:betterlineup])
        format.html { redirect_to @betterlineup, notice: 'Betterlineup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @betterlineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /betterlineups/1
  # DELETE /betterlineups/1.json
  def destroy
    @betterlineup = Betterlineup.find(params[:id])
    @betterlineup.destroy

    respond_to do |format|
      format.html { redirect_to betterlineups_url }
      format.json { head :no_content }
    end
  end
end
