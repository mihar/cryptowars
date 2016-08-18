class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index]

  def index
    @indices = Index.all.order(value_diff_1h: :desc)
  end
end
