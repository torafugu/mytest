class RamenController < ApplicationController
  # GET /ramen
  # GET /ramen.json
  def index
    @ramen = Raman.all
    session[:ramen] = @ramen

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ramen }
    end
  end

  # GET /ramen/1
  # GET /ramen/1.json
  def show
    @raman = Raman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @raman }
    end
  end

  # GET /ramen/new
  # GET /ramen/new.json
  def new
    @raman = Raman.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @raman }
    end
  end

  # GET /ramen/1/edit
  def edit
    @raman = Raman.find(params[:id])
  end

  # POST /ramen
  # POST /ramen.json
  def create
    @raman = Raman.new(params[:raman])

    respond_to do |format|
      if @raman.save
        format.html { redirect_to @raman, notice: 'Raman was successfully created.' }
        format.json { render json: @raman, status: :created, location: @raman }
      else
        format.html { render action: "new" }
        format.json { render json: @raman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ramen/1
  # PUT /ramen/1.json
  def update
    @raman = Raman.find(params[:id])

    respond_to do |format|
      if @raman.update_attributes(params[:raman])
        format.html { redirect_to @raman, notice: 'Raman was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @raman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ramen/1
  # DELETE /ramen/1.json
  def destroy
    @raman = Raman.find(params[:id])
    @raman.destroy

    respond_to do |format|
      format.html { redirect_to ramen_url }
      format.json { head :no_content }
    end
  end

  # GET /ramen/edit_all
  def edit_all
    @ramen = session[:ramen]
  end

  # GET /ramen/confirm_all
  def confirm_all
    @ramen = Array.new
    for raman in params[:ramen]
      updated_raman = Raman.find(raman["id"])
      updated_raman.update_attributes(raman)
      @ramen << updated_raman
    end
    session[:ramen] = @ramen
  end

  # GET /ramen/update_all
  def update_all
    @ramen = session[:ramen]
    for raman in @ramen
      raman.save
    end
    render action: "index"
  end
end
