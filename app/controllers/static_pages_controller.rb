class StaticPagesController < ApplicationController
  def index
    @user = User.new
  end

  def about
  end

  def contact
  end
end
