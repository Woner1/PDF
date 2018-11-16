class HomeController < ApplicationController
  def index


  end

  def show
    @name=params[:name]
    subject=params[:subject]
    subject=params[:subject]
    Prawn::Document.generate(@name+".pdf") do
      text "#{subject}"
    end
  end
end
