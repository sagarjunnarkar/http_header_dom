require 'mechanize'
class ApplicationController < ActionController::Base
  protect_from_forgery
  def home
  	
  end

  def get_dom_header
    @agent = Mechanize.new
    @agent.get(params[:website])
    # respond_to do |format|
    #   format.json { render :json => @agent.page.header.to_json }
    # end
  end
end
