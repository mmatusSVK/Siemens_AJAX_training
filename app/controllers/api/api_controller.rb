class Api::ApiController < ActionController::Base
  layout false

  before_action do
    request.format = :json
  end

end