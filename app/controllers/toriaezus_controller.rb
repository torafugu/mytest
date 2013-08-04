class ToriaezusController < ApplicationController
  # GET /toriaezus
  # GET /toriaezus.json
  def index
    @toriaezus = Toriaezu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @toriaezus }
    end
  end

  # GET /toriaezus/1
  # GET /toriaezus/1.json
  def show
    @toriaezu = Toriaezu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @toriaezu }
    end
  end

  # GET /toriaezus/new
  # GET /toriaezus/new.json
  def new
    @toriaezu = Toriaezu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @toriaezu }
    end
  end

  # GET /toriaezus/1/edit
  def edit
    @toriaezu = Toriaezu.find(params[:id])
  end

  # POST /toriaezus
  # POST /toriaezus.json
  def create
    @toriaezu = Toriaezu.new(params[:toriaezu])

    respond_to do |format|
      if @toriaezu.save
        format.html { redirect_to @toriaezu, notice: 'Toriaezu was successfully created.' }
        format.json { render json: @toriaezu, status: :created, location: @toriaezu }
      else
        format.html { render action: "new" }
        format.json { render json: @toriaezu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /toriaezus/1
  # PUT /toriaezus/1.json
  def update
    @toriaezu = Toriaezu.find(params[:id])

    respond_to do |format|
      if @toriaezu.update_attributes(params[:toriaezu])
        format.html { redirect_to @toriaezu, notice: 'Toriaezu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @toriaezu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toriaezus/1
  # DELETE /toriaezus/1.json
  def destroy
    @toriaezu = Toriaezu.find(params[:id])
    @toriaezu.destroy

    respond_to do |format|
      format.html { redirect_to toriaezus_url }
      format.json { head :no_content }
    end
  end
end
