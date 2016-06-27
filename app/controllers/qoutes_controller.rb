class QoutesController < ApplicationController
  def index
    @qoute = Qoute.order("RANDOM()").first
  end
end
