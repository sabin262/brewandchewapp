# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    @food = Food.all
  end
end
