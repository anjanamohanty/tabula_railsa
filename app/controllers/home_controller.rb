class HomeController < ApplicationController

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.create!(survey_params)
  end

  private def survey_params
    params.require(:survey).permit(:name, :chocolate, :puppies, :rainbows, :cash)
  end
end
