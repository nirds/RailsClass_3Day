class TranslantionsController < ApplicationController
  # GET /translantions
  # GET /translantions.json
  def index
    @translantions = Translantion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @translantions }
    end
  end

  # GET /translantions/1
  # GET /translantions/1.json
  def show
    @translantion = Translantion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @translantion }
    end
  end

  # GET /translantions/new
  # GET /translantions/new.json
  def new
    @translantion = Translantion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @translantion }
    end
  end

  # GET /translantions/1/edit
  def edit
    @translantion = Translantion.find(params[:id])
  end

  # POST /translantions
  # POST /translantions.json
  def create
    @translantion = Translantion.new(params[:translantion])

    respond_to do |format|
      if @translantion.save
        format.html { redirect_to @translantion, notice: 'Translantion was successfully created.' }
        format.json { render json: @translantion, status: :created, location: @translantion }
      else
        format.html { render action: "new" }
        format.json { render json: @translantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /translantions/1
  # PUT /translantions/1.json
  def update
    @translantion = Translantion.find(params[:id])

    respond_to do |format|
      if @translantion.update_attributes(params[:translantion])
        format.html { redirect_to @translantion, notice: 'Translantion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @translantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /translantions/1
  # DELETE /translantions/1.json
  def destroy
    @translantion = Translantion.find(params[:id])
    @translantion.destroy

    respond_to do |format|
      format.html { redirect_to translantions_url }
      format.json { head :no_content }
    end
  end
end
