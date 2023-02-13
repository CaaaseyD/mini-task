class HomepageController < ApplicationController
  def index
    @goals = Goal.findAll
  end
end
