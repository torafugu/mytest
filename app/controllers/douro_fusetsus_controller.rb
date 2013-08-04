class DouroFusetsusController < ApplicationController
  # GET /douro_fusetsus
  # GET /douro_fusetsus.json
  def index
    @douro_fusetsus = DouroFusetsu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @douro_fusetsus }
    end
  end

  # GET /douro_fusetsus/1
  # GET /douro_fusetsus/1.json
  def show
    @douro_fusetsu = DouroFusetsu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @douro_fusetsu }
    end
  end

  # GET /douro_fusetsus/new
  # GET /douro_fusetsus/new.json
  def new
    @douro_fusetsu = DouroFusetsu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @douro_fusetsu }
    end
  end

  # GET /douro_fusetsus/1/edit
  def edit
    @douro_fusetsu = DouroFusetsu.find(params[:id])
  end

  # POST /douro_fusetsus
  # POST /douro_fusetsus.json
  def create
    @douro_fusetsu = DouroFusetsu.new(params[:douro_fusetsu])

    respond_to do |format|
      if @douro_fusetsu.save
        format.html { redirect_to @douro_fusetsu, notice: 'Douro fusetsu was successfully created.' }
        format.json { render json: @douro_fusetsu, status: :created, location: @douro_fusetsu }
      else
        format.html { render action: "new" }
        format.json { render json: @douro_fusetsu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /douro_fusetsus/1
  # PUT /douro_fusetsus/1.json
  def update
    @douro_fusetsu = DouroFusetsu.find(params[:id])

    respond_to do |format|
      if @douro_fusetsu.update_attributes(params[:douro_fusetsu])
        format.html { redirect_to @douro_fusetsu, notice: 'Douro fusetsu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @douro_fusetsu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /douro_fusetsus/1
  # DELETE /douro_fusetsus/1.json
  def destroy
    @douro_fusetsu = DouroFusetsu.find(params[:id])
    @douro_fusetsu.destroy

    respond_to do |format|
      format.html { redirect_to douro_fusetsus_url }
      format.json { head :no_content }
    end
  end
end
