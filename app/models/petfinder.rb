require 'httparty'
class Petfinder
  include HTTParty
  base_uri "api.petfinder.com"

attr_reader :options

def initialize
  api_key = '4e7ed7382fc8429bc103b2e8a8d4e193'
  @options = {
    query: {
      key: api_key,
      format: 'json',
      count: 10,
      location: '02906' # how do you make this dependant on user input?
    }
  }
end
# ?key=4e7ed7382fc8429bc103b2e8a8d4e193&format=json&count=10&location=02906'
  def get_data
    self.class.get('/shelter.find', @options)
  end

  def shelters
    if get_data.code.to_i == 200
    get_data.parsed_response
  else
    raise "Error fetching data from Petfinder API"
    end
  end
end

# code from tutorial:
# https://code.likeagirl.io/dont-be-scared-of-api-s-a-beginner-s-guide-to-api-s-using-meetup-and-rails-part-1-7fac68635c49
# https://code.likeagirl.io/dont-be-scared-of-api-s-4dd9e84271d4
