<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<cfparam type="numeric" name="eventID" default="35517">
    
    <cfinvoke 
 	component="SFarts.JFtemp.sfarts"
 	method="getnumberOfEvents"
 	returnvariable="getnumberOfEventsRet">
	</cfinvoke>

	<cfinvoke 
 	component="SFarts.JFtemp.sfarts"
 	method="getEventByIdWithPodData"
 	returnvariable="eventData">
	<cfinvokeargument name="ID" value="#eventID#"/>
</cfinvoke>


	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <META NAME="description" CONTENT="<cfoutput>#eventData.EVENT_DESCRIPTION#</cfoutput>"
<META NAME="TITLE" CONTENT="<cfoutput>SFarts.org listed event: #eventData.Event_Name#</cfoutput>">
<link rel="image_src" href="http://www.sfarts.org/images/logo.gif" />	
	
    <link rel="stylesheet" type="text/css" href="css/all.css" media="screen" />
    
    

	<script type="text/javascript"
	src="http://api.maps.yahoo.com/ajaxymap?v=3.8&appid=bkEJMsjV34Grj6ePcxJjG4TRRjoG_qtE5xI7N0PWFOfDCGf2keo5WdAZA6.Aq.lPTQ--">
	</script>
    <style type="text/css">
#map{
  height: 75%;
  width: 100%;
}
</style> 


    
    <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.slidePanel.min.js"></script>
    
    <script type="text/javascript">
	 <cfoutput>
    $(document).ready(function(){
       
        // default settings
        // $('.panel').slidePanel();
        
        // custom settings
        $('##panel').slidePanel({
            ajax: true,
            ajaxSource: 'content.cfm?eventID=#eventData.event_num#'
        });
    });
	</cfoutput>
    </script>
    
</head>
<body>


<div id="alert">
	<cfoutput>
    <cfif #eventData.storytext# NEQ ''>
    <a href="content.cfm?eventID=#eventData.event_num#" id="trigger"><em>This event has been highlighted by our #eventData.Discipline# curator, #eventData.curatedBy#</em> <strong>       &nbsp;&nbsp;  READ THE PREVIEW</strong></a>
		<div id="panel" class="panel left"></div>
        </cfif>
     </cfoutput>   
  </div>      

<div id="wrapper">
  <div class="holder">
  <div id="header">
    <h1 class="logo"><a href="http://www.sfarts.org/">SFArts.org</a></h1>
    <ul id="nav">
    <cfoutput>	
    	<cfif eventData.ticketlink NEQ ''>
      <li><a href="#eventData.ticketlink#">Buy Tickets</a></li>
      </cfif>
      </cfoutput>
      <li><a href="http://www.sfarts.org/search.cfm">Search all <cfoutput>#getnumberOfEventsRet.EVENTCOUNT# </cfoutput> Events</a></li>
      <li><a href="http://www.addthis.com/bookmark.php" 
    						style="text-decoration:none;" 
       					 class="addthis_button">Share</a></li>
    </ul>
  </div>
 <cfoutput>
  <div id="main">
    <div class="info">
      <div class="holder">
        <div class="row event">
          <div class="mission"> Event </div>
          <div class="text-col">
            <h2>#eventData.Event_Name#</h2>
            <strong class="info-box">#eventData.DATE_STRING#<br/>
              #eventData.TIME_STRING#</strong>
            <h3><a href="#eventData.ORG_WEB#">#eventData.ORG_NAME#</a></h3>
            <h3>#eventData.Venue_Name#</h3>
          </div>
          <div class="info-col"> #eventData.TICKET_STRING#</div>
        </div>
        <div class="row">
          <div class="mission"> Description </div>
          <div class="text-col">
            <p>#eventData.EVENT_DESCRIPTION#</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="mission"> Location </div>
        <div class="text-col">
          <h3>#eventData.VENUE_NAME#</h3>
          <address>
            #eventData.VENUE_ADDRESS#<br/>
            #eventData.VENUE_CITY#, CA<br/>
            #eventData.VENUE_PHONE#
          </address>
        </div>
      </div>
    </div>
  </div>
  </cfoutput>
  <div class="visual">
    <div id="map"></div> 
    <script type="text/javascript">
	// Create a map object
	var map = new YMap(document.getElementById('map'));
	<cfoutput>
	var geoPoint = new YGeoPoint(#eventData.lat_lon#);
	</cfoutput>

	// Add map type control
	map.addTypeControl();

	// Set map type to either of: YAHOO_MAP_SAT, YAHOO_MAP_HYB, YAHOO_MAP_REG
	map.setMapType(YAHOO_MAP_REG);

	// Display the map centered on a geocoded location
	map.drawZoomAndCenter(geoPoint, 3);
	map.addOverlay(new YMarker(geoPoint));
</script>
     </div>
  </div>
</div>
<div id="footer">
  <p align="center">&copy; <script language="javascript"> var d = new Date(); var curr_year = d.getFullYear(); document.write(curr_year); </script> 
  <a href="http://www.sfarts.org/">SFArts.org</a>. All rights reserved.</p>
</div>
</div>
 <!--VISISTAT SNIPPET//-->
<SCRIPT TYPE="text/javascript">var DID=12737;</SCRIPT>
<SCRIPT SRC="http://sniff.visistat.com/sniff.js" TYPE="text/javascript"></SCRIPT>
<!--VISISTAT SNIPPET//--> 

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-9189676-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>