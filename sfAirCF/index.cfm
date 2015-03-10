<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="">
        <title>SF/Arts GeoLocation Tool</title>

        <!-- Bootstrap core CSS -->
        <link href="./css/bootstrap.min.css" rel="stylesheet">
        <link href="./css/bootstrap-theme.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <style>body{padding-top:50px;}.starter-template{padding:40px 15px;text-align:center;}</style>
<cfscript>
sfartsData = CreateObject("Component","data/sfAIR_HTML");
sfartsData.init();
nabes = sfartsData.getNewNeighborHoods();
</cfscript>
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Geolocator</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div class="container">
            <div class="starter-template">
                <h1>SFArts Geolocator Tool</h1>
            </div>
             <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-8">
                <div style="height:175px;overflow:auto;">
                <table id="venues" class= "table table-striped table-bordered">
                      <thead>
                        <tr >
                          <th><div align="left">Venue</div></th>
                          <th>Address</th>
                          <th><div align="left">Neighborhood</div></th>
                        </tr>
                      </thead>
                     <tbody class="venueList,table-striped" id="venueResults"><!--- inject html here ---></tbody> 
                        
                        <script id="venueTemplate" type="x-handlebars-template">
                             {{#each data}}
                            <tr class="clickableRow" data-id="{{id}}" >
                            <td width="50%"><a href="javascript:getVenueDetails({{id}})">{{venue_name}}</a></td>
                          <td width="50%">{{venue_address}}</td>
                          <td>{{neighborhood}}</td>
                        <td style="display:none">{{ID}}</td>            
                         </tr>
                         {{/each}}
                       </script>   
                     
                </table>
                </div>
                </div>
                
                <div class="col-md-3">
                     <!--
                     <div class="input-group">
                          <span class="btn-group-vertical">
                            <button class="btn btn-default" type="button">All Active</button>
                            <button class="btn btn-default" type="button">No Neighborhood</button>
                             <button class="btn btn-default" type="button">No GEO</button>
                     </div><!-- /input-group -->
                    
                                            <label class="btn btn-default" >
                                <input type="radio" name="inputWalls" id="inputWallsall" value="All" checked onclick="getActiveVenues('all');">
                            All Active Venues</label><br><br>
                            <label class="btn btn-default">
                                <input type="radio" name="inputWalls" id="inputWallsnb" width="100px"  value="Good" onclick="getActiveVenues('nb');">
                            No Neighborhood</label><br><br>
                             <label class="btn btn-default">
                            	 <input type="radio" name="inputWalls" id="inputWallstravel" width="100px"  value="OK" onclick="getActiveVenues('travel');">
                            No Travel</label><br><br>
                            <label class="btn btn-default">
                                <input type="radio" name="inputWalls" id="inputWalls" value="Poor" onclick="getActiveVenues('geo');">
                            No Geolocation </label><br><br>

                    
                </div>
           </div>
            <br>
            <div class="row">
                 <div class="col-md-2"></div>
                <div class="col-md-4">
                        <div class="form-inline" id="formTemplate"><!--- inject template here ---> </div>
                           <script id="venueDetailTemplate" type="x-handlebars-template">
                         
                         <fieldset>

                        <!-- Form Name -->
                        <legend>Venue Details</legend>

                        <!-- Text input-->
                        <div class="control-group">
                          <label class="control-label" for="tiVENUE_NAME">Venue</label>
                          <div class="controls">
                            <input id="tiVENUE_NAME" name="tiVENUE_NAME" type="text" placeholder="Venue" class="input-large" value="{{data.VENUE_NAME}}" >

                          </div>
                        </div>

                        <!-- Text input-->
                        <div class="control-group">
                          <label class="control-label" for="tiVENUE_ADDRESS">Address</label>
                          <div class="controls">
                            <input id="tiVENUE_ADDRESS" name="tiVENUE_ADDRESS" type="text" placeholder="address" class="input-medium" value="{{data.VENUE_ADDRESS}}">

                          </div>
                        </div>

                        <!-- Text input-->
                        <div class="control-group">
                          <label class="control-label" for="tiVENUE_CITY">City</label>
                          <div class="controls">
                            <input id="tiVENUE_CITY" name="tiVENUE_CITY" type="text" placeholder="City" class="input-medium" value="{{data.VENUE_CITY}}">

                          </div>
                        </div>

                        <!-- Text input-->
                        <div class="control-group">
                          <label class="control-label" for="tiVENUE_ZIP">Zip</label>
                          <div class="controls">
                            <input id="tiVENUE_ZIP" name="tiVENUE_ZIP" type="text" placeholder="Zip" class="input-medium" value="{{data.VENUE_ZIP}}">

                          </div>
                        </div>

                        <!-- Text input-->
                        <div class="control-group">
                          <label class="control-label" for="tiVENUE_PHONE">Venue Phone</label>
                          <div class="controls">
                            <input id="tiVENUE_PHONE" name="tiVENUE_PHONE" type="text" placeholder="Phone" class="input-large" value="{{data.VENUE_PHONE}}">

                          </div>
                        </div>

                        <!-- Select Basic -->
                        <div class="control-group">
                          <label class="control-label" for="selectbasic">Neighborhood</label>
                          <div class="controls">
                            <select id="selectbasic" name="selectbasic" class="input-xlarge">
                        	
                              <option value="8">Bayview/Candlestick Point</option>
                           
                              <option value="1">Castro/Upper Market</option>
                           
                              <option value="2">Chinatown</option>
                           
                              <option value="16">City Wide</option>
                           
                              <option value="3">Civic Center</option>
                           
                              <option value="4">Embarcadero Financial District</option>
                           
                              <option value="5">Fishermans Wharf</option>
                           
                              <option value="7">Golden Gate Park/Sunset</option>
                           
                              <option value="6">Haight-Ashbury</option>
                           
                              <option value="9">Japantown/Fillmore</option>
                           
                              <option value="10">Marina/Presidio</option>
                           
                              <option value="11">Mission District</option>
                           
                              <option value="12">Nob Hill</option>
                           
                              <option value="13">North Beach</option>
                           
                              <option value="17">Other Location</option>
                           
                              <option value="14">SOMA/Yerba Buena</option>
                           
                              <option value="15">Union Square</option>
                           
                            </select>
                          </div>
                        </div>
						
						  <!-- Select Basic -->
                        <div class="control-group">
                          <label class="control-label" for="selectbasic">NEW Neighborhood</label>
                          <div class="controls">
                            <select id="selectbasicNew" name="selectbasic" class="input-xlarge">
                        	<cfoutput query="nabes">	
                              <option value="#data#">#label#</option>
							  </cfoutput>                           
                             
                            </select>
                          </div>
                        </div>

                        <!-- Text input-->
                        <div class="control-group">
                          <label class="control-label" for="tiVENUE_WEB">Venue Web</label>
                          <div class="controls">
                            <input id="tiVENUE_WEB" name="tiVENUE_WEB" type="text" placeholder="Web" class="input-medium" value="{{data.VENUE_WEB}}">

                          </div>
                        </div>
                         <!-- Text input-->
                        <div class="control-group">
                        
                          <div class="controls">
                            <input type="hidden" id="tiVENUE_ID" name="tiVENUE_ID" type="text" placeholder="Web" class="input-medium" value="{{data.ID}}">

                          </div>
                        </div>

                        <!-- Button -->
                        <div class="control-group">
                          <label class="control-label" for="btnSAVE">Save</label>
                          <div class="controls">
                            <button id="btnSAVE" name="btnSAVE" class="btn btn-primary" onclick="updateVenue()">Save</button>
                          </div>
                        </div>

                        </fieldset>
                    
                    </script>
            
          </div>
           <div  class="col-md-6" >
           <div id="map-canvas" style="width: 320px; height: 320px;">
              
           </div>
           <span id="latLonContainer"> <!--- inject html here ---></span>  
           <script id="latlonTemplate" type="x-handlebars-template">
           Latitude <textarea id="lat">{{lat}}</textarea>  Longitude = <textarea id="long">{{lon}}</textarea>
           </script>
           <br>
           <form>
           <div class="controls">
           <button type="button" class="btn btn-danger" title="punch it in" value="Punch It In" onclick="punchItIn()">Punch It In 
           </button>
               </div>
           </form>
           </div>
        </div>
        </div>
    </body>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
     <script src="http://maps.google.com/maps/api/js?sensor=false"
          type="text/javascript"></script>
    <script src="js/bootstrap.js"></script> 
    <script src="js/Handlebars.js"></script>
    <script src="js/jquery.serializecfjson-0.2.min.js"></script>
    <script src="js/sfAir.js"></script>
    
    <script>
        $(document).ready(function(e) {
            initialize();
        //    getActiveVenues('all');
        
        
        });
        
    </script>   
             
</html>
