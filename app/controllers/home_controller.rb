class HomeController < ApplicationController

  def form
    @survey = Survey.new
    if request.post?
      @survey = Survey.create!(survey_params)
    end
  end

  private def survey_params
    params.require(:survey).permit(:name, :chocolate, :puppies, :rainbows, :cash)
  end
end
