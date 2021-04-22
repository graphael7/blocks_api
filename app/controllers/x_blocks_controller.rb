class XBlocksController < ApplicationController
  before_action :set_x_block, only: [:show, :edit, :update, :destroy]


  def admin
    @x_blocks = XBlock.all
    render json: @x_blocks
  end

  def index
    @x_blocks = XBlock.all
    render json: @x_blocks
  end


  def show
    render json: @x_block
  end

  def new
    @x_block = XBlock.new
    render json: @x_block
  end

  def edit
    render json: @x_block
  end

  def create
    @x_block = XBlock.new(x_block_params)

    respond_to do |format|
      if @x_block.save
        format.json { render :show, status: :created, location: @x_block }
      else
        format.json { render json: @x_block.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @x_block.update(x_block_params)
        format.json { render :show, status: :ok, location: @x_block}
      else
        format.json { render json: @x_block.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    @x_block.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_x_block
    @x_block = XBlock.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def x_block_params
    params.require(:x_block).permit(:title, :front_body, :back_body, :type)
  end


end
