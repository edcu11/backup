class HomeController < ApplicationController
  skip_before_action :authenticate, :authenticate_u

end
