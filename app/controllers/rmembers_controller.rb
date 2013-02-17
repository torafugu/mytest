class RmembersController < ApplicationController
  # GET /rmembers
  # GET /rmembers.json
  def index
    @rmembers = Rmember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rmembers }
    end
  end

  # GET /rmembers/1
  # GET /rmembers/1.json
  def show
    @rmember = Rmember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rmember }
    end
  end

  # GET /rmembers/new
  # GET /rmembers/new.json
  def new
    @rmember = Rmember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rmember }
    end
  end

  # GET /rmembers/1/edit
  def edit
    @rmember = Rmember.find(params[:id])
  end

  # POST /rmembers
  # POST /rmembers.json
  def create
    @rmember = Rmember.new(params[:rmember])

    respond_to do |format|
      if @rmember.save
        format.html { redirect_to @rmember, notice: 'Rmember was successfully created.' }
        format.json { render json: @rmember, status: :created, location: @rmember }
      else
        format.html { render action: "new" }
        format.json { render json: @rmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rmembers/1
  # PUT /rmembers/1.json
  def update
    @rmember = Rmember.find(params[:id])

    respond_to do |format|
      if @rmember.update_attributes(params[:rmember])
        format.html { redirect_to @rmember, notice: 'Rmember was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rmembers/1
  # DELETE /rmembers/1.json
  def destroy
    @rmember = Rmember.find(params[:id])
    @rmember.destroy

    respond_to do |format|
      format.html { redirect_to rmembers_url }
      format.json { head :no_content }
    end
  end
end
