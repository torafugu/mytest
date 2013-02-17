class OnecolumnmodelsController < ApplicationController
  # GET /onecolumnmodels
  # GET /onecolumnmodels.json
  def index
    @onecolumnmodels = Onecolumnmodel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @onecolumnmodels }
    end
  end

  # GET /onecolumnmodels/1
  # GET /onecolumnmodels/1.json
  def show
    @onecolumnmodel = Onecolumnmodel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @onecolumnmodel }
    end
  end

  # GET /onecolumnmodels/new
  # GET /onecolumnmodels/new.json
  def new
    @onecolumnmodel = Onecolumnmodel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @onecolumnmodel }
    end
  end

  # GET /onecolumnmodels/1/edit
  def edit
    @onecolumnmodel = Onecolumnmodel.find(params[:id])
  end

  # POST /onecolumnmodels
  # POST /onecolumnmodels.json
  def create
    @onecolumnmodel = Onecolumnmodel.new(params[:onecolumnmodel])

    respond_to do |format|
      if @onecolumnmodel.save
        format.html { redirect_to @onecolumnmodel, notice: 'Onecolumnmodel was successfully created.' }
        format.json { render json: @onecolumnmodel, status: :created, location: @onecolumnmodel }
      else
        format.html { render action: "new" }
        format.json { render json: @onecolumnmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /onecolumnmodels/1
  # PUT /onecolumnmodels/1.json
  def update
    @onecolumnmodel = Onecolumnmodel.find(params[:id])

    respond_to do |format|
      if @onecolumnmodel.update_attributes(params[:onecolumnmodel])
        format.html { redirect_to @onecolumnmodel, notice: 'Onecolumnmodel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @onecolumnmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onecolumnmodels/1
  # DELETE /onecolumnmodels/1.json
  def destroy
    @onecolumnmodel = Onecolumnmodel.find(params[:id])
    @onecolumnmodel.destroy

    respond_to do |format|
      format.html { redirect_to onecolumnmodels_url }
      format.json { head :no_content }
    end
  end
end
