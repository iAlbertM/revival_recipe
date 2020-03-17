# frozen_string_literal: true

require 'httparty'

class Recipe
  include HTTParty

  base_uri 'http://www.recipepuppy.com/api'
  default_params onlyImages: 1

  # ENABLE THE FOLLOWING LINE ONCE recipepuppy.com fully working...
  format :json

  def self.for(keyword = 'chocolate')
    get('', query: { q: keyword })['results']

    # work_around(keyword)
  end

  def self.work_around(keyword)
    response_text = get('', query: { q: keyword })
    # response.charset("utf-8")
    # response_text.encode("utf-8")
    require 'json'
    # response_text.gsub!(/.!DOCTYPE./, "")
    JSON.parse(response_text)['results']
  end
end
