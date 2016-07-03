class Api::CitationsController < Api::ApiController

  def index
    @citation = Citation.order('RANDOM()').first
  end

  def create
    if params[:author] and params[:citation]
      @citation = Citation.create(citation: params[:citation], author: params[:author])
    else
      head 400
    end
  end

end