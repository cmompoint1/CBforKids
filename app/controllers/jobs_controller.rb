class JobsController < ApplicationController
  def index
  end

  def jobs
  end

  def locations
  end

  def results
  	@formatted_location = {"mountains" => "Denver, CO", "city" => "New York, NY", "beach" => "Miami, FL", "country" => "Wichita, KS"}
  	if params[:job] == "builder"
  		@keyword = "construction"
  	elsif params[:job] == "policeman"
  		@keyword = "police officer security law enforcement"
  	else
  		@keyword = params[:job]
  	end
  	@location = params[:location]
  	@real_city = @formatted_location[@location]
  	@results = Cb.job.search({location: @real_city, keywords: @keyword})
  end

  def descriptions
  end

  def finished
  end
end
