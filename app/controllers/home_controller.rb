class HomeController < ApplicationController

  def form
    @survey = Survey.new
  end

  def thank_you
    @survey = Survey.create!(survey_params)
  end

  private def survey_params
    params.require(:survey).permit(:name, :chocolate, :puppies, :rainbows, :cash)
  end
end
