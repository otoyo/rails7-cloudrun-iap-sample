class ArticlesController < ApplicationController
  layout "application"

  def index
    @iap_user_email = iap_user_email
  end
end
