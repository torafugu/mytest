class Imp2RamenController < ApplicationController
  # GET /imp2_ramen
  # GET /imp2_ramen.json
  def index
    @imp2_ramen = Imp2Raman.all
    session[:imp2_ramen] = @imp2_ramen

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

  # GET /imp2_ramen/edit_all
  def edit_all
    @imp2_ramen = session[:imp2_ramen]
  end

  # GET /imp2_ramen/confirm_all
  def confirm_all
    @imp2_ramen = Array.new
    for imp2_raman in params[:imp2_ramen]
      unless imp2_raman["id"].blank?
        updated_imp2_raman = Imp2Raman.find(imp2_raman["id"])
        updated_imp2_raman.update_attributes(imp2_raman)
        @imp2_ramen << updated_imp2_raman
      else
        @imp2_ramen << Imp2Raman.new(imp2_raman)
      end
    end
    session[:imp2_ramen] = @imp2_ramen
  end

  # GET /imp2_ramen/update_all
  def update_all
    @imp2_ramen = session[:imp2_ramen]
    for imp2_raman in @imp2_ramen
      if imp2_raman.delete_check
        to_destory_raman = Imp2Raman.find(imp2_raman.id)
        to_destory_raman.destroy
      else
        imp2_raman.save
      end
    end
    session[:imp2_ramen] = nil
    respond_to do |format|
      format.html { redirect_to imp2_ramen_url }
      format.json { head :no_content }
    end
  end

  # GET /imp2_ramen/add_row
  def add_row
  end
end
