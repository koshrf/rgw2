# Gw2Api - Ruby wrapper for Guild Wars 2 official API.
# Copyright (C) 2013  Ricardo C. Fernández de C. <koshrf at gmail dot com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
require 'net/http'
require 'net/https'

class Gw2Api
  attr_reader :response, :uri, :http

  def initialize
    @uri = URI.parse('https://api.guildwars2.com/v1')
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
    path = '/v1/wvw/matches.json'
    @response = @http.get(path).body
  end
  def match_details(match_id)
    path = "/v1/wvw/match_details.json?match_id=#{match_id}"
    @response = @http.get(path).body
  end
  def objective_names(lang='en')
    path = "/v1/wvw/objective_names.json?lang=#{lang}"
    @response = @http.get(path).body
  end

  #Items and Recipes
  def items
    path = '/v1/items.json'
    @response = @http.get(path).body
  end
  def item_details(id, lang='en')
    path = "/v1/item_details.json?item_id=#{id}&lang=#{lang}"
    @response = @http.get(path).body
  end
  def recipes
    path = '/v1/recipes.json'
    @response = @http.get(path).body
  end
  def recipe_details(recipe_id, lang='en')
    path = "/v1/recipe_details.json?recipe_id=#{recipe_id}&lang=#{lang}"
    response = @http.get(path).body
  end

end
