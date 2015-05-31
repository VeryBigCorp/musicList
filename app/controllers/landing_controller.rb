class LandingController < ApplicationController

  def index
    redirect_to start_path if signed_in?
  end
end
