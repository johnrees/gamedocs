class LensesController < ApplicationController
  # GET /lenses
  # GET /lenses.json
  def index
    @lenses = Lens.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lenses }
    end
  end

  # GET /lenses/1
  # GET /lenses/1.json
  def show
    @lens = Lens.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lens }
    end
  end

  # GET /lenses/new
  # GET /lenses/new.json
  def new
    @lens = Lens.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lens }
    end
  end

  # GET /lenses/1/edit
  def edit
    @lens = Lens.find(params[:id])
  end

  # POST /lenses
  # POST /lenses.json
  def create
    @lens = Lens.new(params[:lens])

    respond_to do |format|
      if @lens.save
        format.html { redirect_to new_lens_url, notice: 'Lens was successfully created.' }
        format.json { render json: @lens, status: :created, location: @lens }
      else
        format.html { render action: "new" }
        format.json { render json: @lens.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lenses/1
  # PUT /lenses/1.json
  def update
    @lens = Lens.find(params[:id])

    respond_to do |format|
      if @lens.update_attributes(params[:lens])
        format.html { redirect_to @lens, notice: 'Lens was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lens.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lenses/1
  # DELETE /lenses/1.json
  def destroy
    @lens = Lens.find(params[:id])
    @lens.destroy

    respond_to do |format|
      format.html { redirect_to lenses_url }
      format.json { head :no_content }
    end
  end
end
