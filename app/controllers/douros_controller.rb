class DourosController < ApplicationController
  # GET /douros
  # GET /douros.json
  def index
    @douros = Douro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @douros }
    end
  end

  # GET /douros/1
  # GET /douros/1.json
  def show
    @douro = Douro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @douro }
    end
  end

  # GET /douros/new
  # GET /douros/new.json
  def new
    @douro = Douro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @douro }
    end
  end

  # GET /douros/1/edit
  def edit
    @douro = Douro.find(params[:id])
  end

  # POST /douros
  # POST /douros.json
  def create
    @douro = Douro.new(params[:douro])

    respond_to do |format|
      if @douro.save
        format.html { redirect_to @douro, notice: 'Douro was successfully created.' }
        format.json { render json: @douro, status: :created, location: @douro }
      else
        format.html { render action: "new" }
        format.json { render json: @douro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /douros/1
  # PUT /douros/1.json
  def update
    @douro = Douro.find(params[:id])

    respond_to do |format|
      if @douro.update_attributes(params[:douro])
        format.html { redirect_to @douro, notice: 'Douro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @douro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /douros/1
  # DELETE /douros/1.json
  def destroy
    @douro = Douro.find(params[:id])
    @douro.destroy

    respond_to do |format|
      format.html { redirect_to douros_url }
      format.json { head :no_content }
    end
  end
end
