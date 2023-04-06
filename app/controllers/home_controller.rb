class HomeController < ApplicationController

  def up
    return render status: :ok, json: {}
  end
end
