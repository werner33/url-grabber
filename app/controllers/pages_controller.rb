require 'open-uri'

class PagesController < ApplicationController
  def home

  end

  def show
    request_uri = params[:url]
    buffer = open(request_uri).read
    html_doc = Nokogiri::HTML(buffer)
    @html = html_doc.css("p").to_s.html_safe
  end


end
