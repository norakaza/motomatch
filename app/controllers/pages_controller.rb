class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :motos#index

  def home
  end
end
