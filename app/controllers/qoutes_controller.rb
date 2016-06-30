class QoutesController < ApplicationController
  def index
    @qoute = Qoute.order("RANDOM()").first
  end

  def new
    @qoute = Qoute.new
  end
end
