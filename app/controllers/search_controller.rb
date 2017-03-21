class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"

    @models = Model.where('nemo LIKE ?', palabra)

    respond_to do |format|
      format.html { redirect_to root_path}
      format.json {render json: @models}
      format.js
    end
  end
  def create1
    palabra = "%#{params[:keyword]}%"

    @models = Model.where('fecha LIKE ?', palabra)


    respond_to do |format|
      format.html { redirect_to root_path}
      format.json {render json: @models}
      format.js
    end
  end
end
