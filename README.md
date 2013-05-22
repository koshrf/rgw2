Ruby Wrapper for Guild Wars 2 API
=================================

GW2 API
-------
[Guild Wars 2 API](https://forum-en.guildwars2.com/forum/community/api/API-Documentation/first#post2028044)

Usage
-----

    require 'gw2api'
    
    gw2example = Gw2Api.new
    
    #'Example items.json'
    puts gw2example.items

    #'Example item_details.json default english'
    puts gw2example.item_details(21218)
    
    #'Example item_details.json spanish'
    puts gw2example.item_details(21218,'es')
    
    #'Example event_names.json default english'
    puts gw2example.event_names
    
    #'Example event_names.json spanish'
    puts gw2example.event_names(lang='es')

    #'Example world_names.json default english'
    puts gw2example.world_names
    
    #'Example world_names.json spanish'
    puts gw2example.world_names(lang='es')
    
    #'Example map_names.json default english'
    puts gw2example.map_names
    
    #'Example events.json (all)'
    puts gw2example.events
    
    #'Example events.json Tarnished Coast'
    puts gw2example.events(world_id=1017)
    
    #'Example events.json Tarnished Coast, map 62 Cursed shore'
    puts gw2example.events(world_id=1017,map_id=62)
    
    #'Example events.json Tarnished Coast, map 62 Cursed shore, event 989A298C-B06B-4E9B-A871-1506A6EE3FEC '
    puts gw2example.events(world_id=1017,map_id=62,event_id='989A298C-B06B-4E9B-A871-1506A6EE3FEC')
    
    #'Example recipes.json'
    puts gw2example.recipes
    
    #'Example recipe_details.json default english'
    puts gw2example.recipe_details(2481)
    
    #'Example recipe_details.json spanish (I have not found an item with localization)'
    puts gw2example.recipe_details(5010,lang='es')
    
    #puts 'Example matches.json'
    puts gw2example.matches
    
    #'Example match_details.json'
    puts gw2example.match_details('1-2')
    
    #puts 'Example objective_names.json default english'
    puts gw2example.objective_names
    
    #puts 'Example objective_names.json spanish'
    puts gw2example.objective_names(lang='es')
    
License
-------
    Gw2Api - Ruby wrapper for Guild Wars 2 official API.
    Copyright (C) 2013  Ricardo C. Fernández de C. <koshrf at gmail dot com>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.