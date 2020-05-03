<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="data:image/png;base64,iVBORw0KGgo=">
    <link rel="stylesheet" href="main.css">
    
    <title>Citadels game initializer</title>
    <meta name="description" content="Initialize characters and unique districts for Citadels New Edition (2016) based on number of players, number of characters. Brief description of the districts and abilities of each of the characters.">
  </head>
  <body>
    <div class="wrapper page">
        <div class="box header">
            <label for="nplayers-filter">Number of players: <select id=nplayers-filter>
                {% for i in range(2,9) -%}
                <option value={{i}}{% if i==4 %} selected{% endif %}>{{i}}</option>
                {% endfor -%}
            </select></label>

            <label for=rank9-filter>
            Rank 9 character <input type=checkbox id=rank9-filter>
            </label>
            
            <label for="preset-filter">Preset: <select id=preset-filter>
                <option value="" selected>Random</option>
                {% for preset in presets -%}
                <option value="{{preset}}">{{preset}}</option>
                {% endfor -%}
            </select></label>
            

            <input id="reroll-button" type="button" value="reroll">
        </div>
        
        <div class="box content">
        </div>
        
        <div class="box footer">
            <p>State id: <input type="text" id="seedbox" name="seed"
       minlength="7" maxlength="7" size="7"></p>
       <input id="reproduce-button" type="button" value="regenerate from state id">
        </div>
    </div>
    <script type="text/javascript" src="seedrandom.js"></script>
    <script type="text/javascript" src="citadels.js"></script>
  </body>
</html>