class QoutesController < ApplicationController
  def index
    @qoute = Qoute.order("RANDOM()").first
  end

  def new
    @qoute = Qoute.new
  end

  def create
    @qoute = Qoute.create(qoute_params)
    if @qoute.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end

    redirect_to root_path
  end

  def about
  end

  private

  def qoute_params
    params.require(:qoute).permit(:saying, :author)
  end

end
