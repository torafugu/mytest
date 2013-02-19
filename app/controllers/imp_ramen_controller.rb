class ImpRamenController < ApplicationController
  # GET /imp_ramen
  # GET /imp_ramen.json
  def index
    @imp_ramen = ImpRaman.all
    session[:imp_ramen] = @imp_ramen

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imp_ramen }
    end
  end

  # GET /imp_ramen/1
  # GET /imp_ramen/1.json
  def show
    @imp_raman = ImpRaman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imp_raman }
    end
  end

  # GET /imp_ramen/new
  # GET /imp_ramen/new.json
  def new
    @imp_raman = ImpRaman.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imp_raman }
    end
  end

  # GET /imp_ramen/1/edit
  def edit
    @imp_raman = ImpRaman.find(params[:id])
  end

  # POST /imp_ramen
  # POST /imp_ramen.json
  def create
    @imp_raman = ImpRaman.new(params[:imp_raman])

    respond_to do |format|
      if @imp_raman.save
        format.html { redirect_to @imp_raman, notice: 'Imp raman was successfully created.' }
        format.json { render json: @imp_raman, status: :created, location: @imp_raman }
      else
        format.html { render action: "new" }
        format.json { render json: @imp_raman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imp_ramen/1
  # PUT /imp_ramen/1.json
  def update
    @imp_raman = ImpRaman.find(params[:id])

    respond_to do |format|
      if @imp_raman.update_attributes(params[:imp_raman])
        format.html { redirect_to @imp_raman, notice: 'Imp raman was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @imp_raman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imp_ramen/1
  # DELETE /imp_ramen/1.json
  def destroy
    @imp_raman = ImpRaman.find(params[:id])
    @imp_raman.destroy

    respond_to do |format|
      format.html { redirect_to imp_ramen_url }
      format.json { head :no_content }
    end
  end

  # GET /imp_ramen/edit_all
  def edit_all
    @imp_ramen = session[:imp_ramen]
  end

  # GET /imp_ramen/confirm_all
  def confirm_all
    @imp_ramen = Array.new
    for imp_raman in params[:imp_ramen]
      updated_imp_raman = ImpRaman.find(imp_raman["id"])
      updated_imp_raman.update_attributes(imp_raman)
      @imp_ramen << updated_imp_raman
    end
    session[:imp_ramen] = @imp_ramen
  end

  # GET /imp_ramen/update_all
  def update_all
    @imp_ramen = session[:imp_ramen]
    for imp_raman in @imp_ramen
      if imp_raman.delete_check
        to_destory_raman = ImpRaman.find(imp_raman.id)
        to_destory_raman.destroy
      else
        imp_raman.save
      end
    end
    session[:imp_ramen] = nil
    respond_to do |format|
      format.html { redirect_to imp_ramen_url }
      format.json { head :no_content }
    end
  end
end
