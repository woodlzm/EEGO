class WelcomeController < ApplicationController
  def index
    expires_in 3.minutes, :public => true
  end

  def googlmap
    expires_in 3.minutes, :public => true
  end
end
