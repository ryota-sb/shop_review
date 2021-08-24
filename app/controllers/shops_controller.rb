class ShopsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @review = Review.new
  end
end
