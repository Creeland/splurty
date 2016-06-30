class QoutesController < ApplicationController
  def index
    @qoute = Qoute.order("RANDOM()").first
  end

  def new
    @qoute = Qoute.new
  end

  def create
    Qoute.create(qoute_params)
    redirect_to root_path
  end

  private

  def qoute_params
    params.require(:qoute).permit(:saying, :author)
  end
end
