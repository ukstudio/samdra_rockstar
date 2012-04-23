class MapController < ApplicationController
  def index
    @territories = Territory.includes(:user).all
  end
end
