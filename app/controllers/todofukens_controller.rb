class TodofukensController < ApplicationController
  # GET /todofukens
  # GET /todofukens.json
  def index
    @todofukens = Todofuken.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @todofukens }
    end
  end

  # GET /todofukens/1
  # GET /todofukens/1.json
  def show
    @todofuken = Todofuken.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @todofuken }
    end
  end

  # GET /todofukens/new
  # GET /todofukens/new.json
  def new
    @todofuken = Todofuken.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @todofuken }
    end
  end

  # GET /todofukens/1/edit
  def edit
    @todofuken = Todofuken.find(params[:id])
  end

  # POST /todofukens
  # POST /todofukens.json
  def create
    @todofuken = Todofuken.new(params[:todofuken])

    respond_to do |format|
      if @todofuken.save
        format.html { redirect_to @todofuken, notice: 'Todofuken was successfully created.' }
        format.json { render json: @todofuken, status: :created, location: @todofuken }
      else
        format.html { render action: "new" }
        format.json { render json: @todofuken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /todofukens/1
  # PUT /todofukens/1.json
  def update
    @todofuken = Todofuken.find(params[:id])

    respond_to do |format|
      if @todofuken.update_attributes(params[:todofuken])
        format.html { redirect_to @todofuken, notice: 'Todofuken was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @todofuken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todofukens/1
  # DELETE /todofukens/1.json
  def destroy
    @todofuken = Todofuken.find(params[:id])
    @todofuken.destroy

    respond_to do |format|
      format.html { redirect_to todofukens_url }
      format.json { head :no_content }
    end
  end
end
