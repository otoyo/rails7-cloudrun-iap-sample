require "googleauth"

class ApplicationController < ActionController::Base
  def iap_user_email
    iap_jwt = request.headers["X-Goog-Iap-Jwt-Assertion"]
    aud = Rails.application.credentials.production[:iap_jwt_aud]
    payload = Google::Auth::IDTokens.verify_iap iap_jwt, aud: aud
    payload["email"]
  end
end
