class Imp2RamenController < ApplicationController
  # GET /imp2_ramen
  # GET /imp2_ramen.json
  def index
    @imp2_ramen = Imp2Raman.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imp2_ramen }
    end
  end

  # GET /imp2_ramen/1
  # GET /imp2_ramen/1.json
  def show
    @imp2_raman = Imp2Raman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imp2_raman }
    end
  end

  # GET /imp2_ramen/new
  # GET /imp2_ramen/new.json
  def new
    @imp2_raman = Imp2Raman.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imp2_raman }
    end
  end

  # GET /imp2_ramen/1/edit
  def edit
    @imp2_raman = Imp2Raman.find(params[:id])
  end

  # POST /imp2_ramen
  # POST /imp2_ramen.json
  def create
    @imp2_raman = Imp2Raman.new(params[:imp2_raman])

    respond_to do |format|
      if @imp2_raman.save
        format.html { redirect_to @imp2_raman, notice: 'Imp2 raman was successfully created.' }
        format.json { render json: @imp2_raman, status: :created, location: @imp2_raman }
      else
        format.html { render action: "new" }
        format.json { render json: @imp2_raman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imp2_ramen/1
  # PUT /imp2_ramen/1.json
  def update
    @imp2_raman = Imp2Raman.find(params[:id])

    respond_to do |format|
      if @imp2_raman.update_attributes(params[:imp2_raman])
        format.html { redirect_to @imp2_raman, notice: 'Imp2 raman was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @imp2_raman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imp2_ramen/1
  # DELETE /imp2_ramen/1.json
  def destroy
    @imp2_raman = Imp2Raman.find(params[:id])
    @imp2_raman.destroy

    respond_to do |format|
      format.html { redirect_to imp2_ramen_url }
      format.json { head :no_content }
    end
  end
end
