# encoding: utf-8

class JushosController < ApplicationController
  # GET /jushos
  # GET /jushos.json
  def index
    @jushos = Jusho.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jushos }
    end
  end

  # GET /jushos/1
  # GET /jushos/1.json
  def show
    @jusho = Jusho.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jusho }
    end
  end

  # GET /jushos/new
  # GET /jushos/new.json
  def new
    @jusho = Jusho.new
    @shichoson = [["都道府県を選択してください。", "0"]]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jusho }
    end
  end

  # GET /jushos/1/edit
  def edit
    @jusho = Jusho.find(params[:id])
  end

  # POST /jushos
  # POST /jushos.json
  def create
    @jusho = Jusho.new(params[:jusho])

    respond_to do |format|
      if @jusho.save
        format.html { redirect_to @jusho, notice: 'Jusho was successfully created.' }
        format.json { render json: @jusho, status: :created, location: @jusho }
      else
        format.html { render action: "new" }
        format.json { render json: @jusho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jushos/1
  # PUT /jushos/1.json
  def update
    @jusho = Jusho.find(params[:id])

    respond_to do |format|
      if @jusho.update_attributes(params[:jusho])
        format.html { redirect_to @jusho, notice: 'Jusho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jusho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jushos/1
  # DELETE /jushos/1.json
  def destroy
    @jusho = Jusho.find(params[:id])
    @jusho.destroy

    respond_to do |format|
      format.html { redirect_to jushos_url }
      format.json { head :no_content }
    end
  end

  # GET /jushos/todoufuken_select
  def todoufuken_select
    @shichoson = Shichoson.find_all_by_todofuken_id(params[:todofuken_id])
    render
  end
end
