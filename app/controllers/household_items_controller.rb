class HouseholdItemsController < ApplicationController
  before_action :set_household_item, only: [:show, :edit, :update, :destroy]

  # GET /household_items
  # GET /household_items.json
  def index
    @household_items = HouseholdItem.all.order("id DESC")
  end

  # GET /household_items/1
  # GET /household_items/1.json
  def show
  end

  # GET /household_items/new
  def new
    @household_item = HouseholdItem.new
  end

  # GET /household_items/1/edit
  def edit
  end

  # POST /household_items
  # POST /household_items.json
  def create
    @household_item = HouseholdItem.new(household_item_params)

    respond_to do |format|
      if @household_item.save
        format.html { redirect_to @household_item, notice: "HouseholdItem was successfully created." }
        format.json { render :show, status: :created, location: @household_item }
      else
        format.html { render :new }
        format.json { render json: @household_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /household_items/1
  # PATCH/PUT /household_items/1.json
  def update
    respond_to do |format|
      if @household_item.update(household_item_params)
        format.html { redirect_to @household_item, notice: "HouseholdItem was successfully updated." }
        format.json { render :show, status: :ok, location: @household_item }
      else
        format.html { render :edit }
        format.json { render json: @household_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /household_items/1
  # DELETE /household_items/1.json
  def destroy
    @household_item.destroy
    respond_to do |format|
      format.html { redirect_to household_items_url, notice: "HouseholdItem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_household_item
      @household_item = HouseholdItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def household_item_params
      params.require(:household_item).permit(:name, :volume, :quantity, :tag, :description)
    end
end
