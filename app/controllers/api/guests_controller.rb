class Api::GuestsController < ApplicationController
  def index
    @guests = Guest.all
    render :index
  end

  def show
    @guest = Guest.find(params[:id])
    @gifts = @guest.gifts
    render :show
  end
end
