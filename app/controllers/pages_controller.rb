class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :raise => false
  
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

end
