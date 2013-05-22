require 'net/http'
require 'net/https'
class Gw2Api
  attr_reader :response, :uri, :http

  def initialize
    @uri = URI.parse("https://api.guildwars2.com/v1")
    @http = Net::HTTP.new(@uri.host, @uri.port)
    @http.use_ssl = true
    #This will accept all SSL, need to fix to use .cert
    @http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  end

  #Dynamic events
  def events(world_id='',map_id='',event_id='')
    path ="/v1/events.json?world_id=#{world_id}&map_id=#{map_id}&event_id=#{event_id}"
    @response = @http.get(path).body
  end
  def event_names(lang='en')
    path = "/v1/event_names.json?lang=#{lang}"
    @response = @http.get(path).body
  end
  def map_names(lang='en')
    path = "/v1/map_names.json?lang=#{lang}"
    @response = @http.get(path).body
  end
  def world_names(lang='en')
    path = "/v1/world_names.json?lang=#{lang}"
    @response = @http.get(path).body
  end

  #WvW
  def matches

  end
  def match_details

  end
  def objective_names

  end

  #Items and Recipes
  def items
    path = "/v1/items.json"
    @response = @http.get(path).body
  end
  def item_details(id, lang='en')
    path = "/v1/item_details.json?item_id=#{id}&lang=#{lang}"
    @response = @http.get(path).body
  end
  def recipes

  end
  def recipe_details

  end

end
