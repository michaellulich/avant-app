class Api::CardholdersController < ApplicationController
  
  def index 
    @cardholders = Cardholder.all
    render "index.json.jbuilder"
  end

  def create
    cardholder = Cardholder.new(
      apr: params[:apr],
      creditlimit: params[:creditlimit]
      )
    if cardholder.save
      render json: {message: 'success'
      }
    end
  end
end


