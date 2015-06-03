class WelcomeController < ApplicationController
  
  def search
    return unless query_present?

    @results = DuckDuckGoClient.search(params[:query])
  end
  
  private
  
  def query_present?
    params[:query].present?
  end  
end
