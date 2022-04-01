class HomeController < ApplicationController
    def index
      @reviews = reviews.all
    end
  end

  