Weather App
Prepare by LEE JIA YU

Introduction
A small client-side application that displays weather data for several cities.


Development Materials 
1. Laravel
2. VueJs
3. UI template


Database structure

1. Tiles table 
- Collect the input from user (city, interval)
- Store data from weather API (temperature, situation, etc)

2. Forecasts table
- Store 5 latest forecast data from weather API (temperature, situation, etc) for each city
- Soft delete previous data when the tile are updated with new forecast

3. Tasks table
- Cron job for update tile status based on refresh interval set by user


Application Description

Create Tile
1. User are require to insert city name and select a time interval for the weather information to be updated.
2. After user submit the information and refresh the page, the weather tile section will appear a tile with city waether details and forecast details
3. The maximum display of tile will be 8 per page. 

Delete Tile
1. User is able to delete the weather tile through the delete button on each tile


Application Setup Design

1. 3 models is setup for the application (tile, forecast, task)
2. Tile have the one-to-many relationship with forecast
3. All the function and display is display on the same page (HomeController.index)
4. Vuejs axios to submit form for creating tile.
5. During creating of a tile, the existance of the city will be checked through the weather API
6. If the city already previously input by user, it will update the city tile instead of created another duplicate city
7. When create/update of city, the weather tile will retrieve 5 of the latest forecast through forecast API and soft delete the previous data, this is to maintain the amount of display for the forecast
8. The weather tile will be display according to descending order of creation time.
9. A cron job (weather update) is created and run according to the refresh interval set by user for each tile.
10. To active the cron job in localhost the command is (php artisan weather:update)
11. The information of weather and forecast will be updated for the tile that reached the refresh interval.


Interface design

1. To allow the tile have equal width and fix max width with the screen size, the tiles section is flex box and flex-wrapped.


 
