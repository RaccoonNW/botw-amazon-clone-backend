class WeaponsController < ApplicationController
  def index
    render json: Weapon.all
  end

  def show
    weapon = Weapon.find_by(id: params[:id])
  end
end
