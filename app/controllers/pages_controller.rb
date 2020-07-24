class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :raise => false
  before_action :authenticate_user!, only: [:admin]
  
  # USER = User.find(params[:id])

  def home
  end

  def about
  end

  def contact
  end
  
  def portfolio
  end
  
  def product
  end

  def admin 
  end
  
end
