class ApplicationController < ActionController::API
  # include ActionController::HttpAuthentication::Token::ControllerMethods


  # def current_user
  #   @user ||= User.find_by(id: user_id)
  # end
  #
  # def user_id
  #   decoded_token.first['user_id']
  # end
  #
  # def decoded_token
  #   begin
  #     JWT.decode(request.headers['Authorization'], ENV['secret_key'])
  #
  #   rescue JWT::DecodeError
  #     [{}]
  #   end
  # end

  #
  # def issue_token(payload)
  #   JWT.encode(payload, ENV["jwt_secret"])
  # end
  #
  # def decode_token
  #   JWT.decode(get_token, ENV["jwt_secret"])[0]
  # end
  #
  # def current_user
  #   decoded_hash = decode_token
  #   User.find(decoded_hash["user_id"])
  # end
  #
  # def get_token
  #   request.headers["Authorization"]
  # end

end
