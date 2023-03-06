class BoadsController < ApplicationController
  def index
    @boards = Boad.all
  end

  def new
    @board = Boad.new
  end

  def show
    @board = Boad.find(params[:id])
  end

  def edit
    @board = Boad.find(params[:id])
  end

  def create
    @board = Boad.new(boad_params)

    if @board.save
      redirect_to @board, notice: '掲示板が作成されました'
    else
      render :new
    end
  end

  def update
    @board = Boad.find_by(id: [params[:id]])
    if @board.update(boad_params)
      redirect_to @board, notice: 'Boars was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @board = Boad.find_by(id: [params[:id]])
    @board.destroy
    redirect_to boads_url, notice: 'Boars was successfully destroied'
  end

  private

  def boad_params
    params.require(:boad).permit(:title, :body)

  end

end
