class TowersController < ApplicationController
  # GET /towers
  # GET /towers.json
  def index
    @towers = Tower.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @towers }
    end
  end

  # GET /towers/1
  # GET /towers/1.json
  def show
    @tower = Tower.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tower }
    end
  end

  # GET /towers/new
  # GET /towers/new.json
  def new
    @tower = Tower.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tower }
    end
  end

  # GET /towers/1/edit
  def edit
    @tower = Tower.find(params[:id])
  end

  # POST /towers
  # POST /towers.json
  def create
    @tower = Tower.new(params[:tower])

    respond_to do |format|
      if @tower.save
        format.html { redirect_to @tower, notice: 'Tower was successfully created.' }
        format.json { render json: @tower, status: :created, location: @tower }
      else
        format.html { render action: "new" }
        format.json { render json: @tower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /towers/1
  # PUT /towers/1.json
  def update
    @tower = Tower.find(params[:id])

    respond_to do |format|
      if @tower.update_attributes(params[:tower])
        format.html { redirect_to @tower, notice: 'Tower was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /towers/1
  # DELETE /towers/1.json
  def destroy
    @tower = Tower.find(params[:id])
    @tower.destroy

    respond_to do |format|
      format.html { redirect_to towers_url }
      format.json { head :no_content }
    end
  end
end
