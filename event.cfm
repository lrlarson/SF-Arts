<!DOCTYPE html>
<html lang="en" prefix="og: http://ogp.me/ns#">
  
<head>
  <meta charset="utf-8">
  <title>SF/ARTS</title>
  <!--- init normal CFC for non ajax calls  --->
  <cfparam name="url.event_num" type="numeric" default="52461">
  
  
<cfscript>
sfData = CreateObject("Component","data/new_v4");
sfData.init();
currentEvent = sfData.getEventByEvent_Num(#url.event_num#);
//currentEditorial = sfData.getHomePageEditorial();
otherEvents = sfData.getEventsByDispForEventPage(#currentEvent.disp#);
</cfscript>
 
 <cfset daysLeft = dateDiff("d", now(),currentEvent.End_Date) >
 
 <cfoutput>
<meta property="og:title" content="#currentEvent.Event_Name#" />
<meta property="og:type" content="event" />
<meta property="og:url" content="http://www.sfarts.org/event.cfm?Event_Num=#currentEvent.Event_Num#" />
<meta property="og:image" content="http://www.sfarts.org/images/sfarts-logo-big.jpg" />
</cfoutput>
  
  <!-- meta name="viewport" content="width=device-width, initial-scale=1.0" -->
  <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1, user-scalable=no">

  <!-- Loading Bootstrap -->
  <link href="bootstrap/css/bootstrap.css" rel="stylesheet">

  <!-- Loading Flat UI -->
  <link rel="stylesheet" type="text/css" href="css/main.css" />
  
  <!-- Loading SF Icons -->
  <link rel="stylesheet" href="fonts/fontello/css/sfarts_icons.css">
  <link rel="stylesheet" href="fonts/fontello/css/animation.css">
    
  <!--[if IE 7]>
    <link rel="stylesheet" href="fonts/fontello/sfarts_icons-ie7.css">
  <![endif]-->    

  <link rel="shortcut icon" href="images/favicon.ico">

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->
  
</head>
  
<body class="three-spot event">
<div id="wrapper">
  
<div class="navbar main-menu">
  <ul class="nav">
    <li><a href="#" class="menu-menu sficon-menu" title="Menu"></a></li>
    <li><a href="#" onClick="javascript:window.history.back(-1);return false;" class="menu-back sficon-left" title="Back"></a></li>
    <li><a href="nearby.cfm" class="menu-location sficon-location" title="Nearby" ></a></li>
    <li><a href="bookmarks.cfm" class="menu-bookmarks sficon-star" title="Bookmarks"></a></li>
    <li><a href="search.cfm?date=today" class="menu-search sficon-search" title="Search"></a></li>
     <li><a href="https://www.facebook.com/pages/SFArtsorg/168761266512929" class="menu-location sficon-facebook" title="Facebook" style="opacity: .3;"></a></li>
    <li><a href="https://twitter.com/SF_ARTS" class="menu-location sficon-twitter" title="Twitter" style="opacity: .3;"></a></li>
  </ul>
</div><!-- /navbar -->

<!--<div class="hide search-bar"><input id="global-search-bar" placeholder="Search by Keyword"  /><a id="global-search-submit" onClick="handleGlobalSearchBarClick($('#global-search-bar').val());">Press Enter</a></div>-->


<div class="menu-bar">
  <div class="relative">
  <ul class="menu-list">
    <li>
        
     <a href="#" class="menu-title">
        <div class="button-wrap"><div href="#" class="btn btn-blend green action-close">Close</div></div>
        Menu
      </a>
    </li>
    <li><a href="index.cfm" class="">Home</a></li>
    <li><a href="feature.cfm" class="">Editorial</a></li>
    <li><a href="search.cfm?date=today" class="">Today's Events</a></li>
    <li><a href="search.cfm?date=weekend" class="">This Weekend</a></li>
    <li>
      <a href="#" class="">Search by Genre</a>
      <div class="submenu">
          <ul class="menu-list">
            <li>
                      
              <a href="#" class="menu-title">
                Select Genre
              </a>
            </li>
          <li class="menu-pad">
            <a href="search.cfm?disp=9">Children</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?disp=2">Dance</a>
          </li>
             <li class="menu-pad">
            <a href="search.cfm?disp=5">Festivals</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?disp=6">Film/Video</a>
          </li>
            <li class="menu-pad">
            <a href="search.cfm?disp=8">Galleries</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?disp=4">Literary Arts</a>
          </li>
             <li class="menu-pad">
            <a href="search.cfm?disp=5">Festivals</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?disp=3">Music</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?disp=7">Museums</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?disp=13">Public Art</a>
          </li>          
          <li class="menu-pad">
            <a href="search.cfm?disp=1">Theater</a>
          </li>                
          </ul>
        </div>
          
    </li>
    
    <li>
      <a href="search.html#date" class="">Search by Date</a>
      <div class="submenu">
        <ul class="menu-list">
          <form method="get" action="search.cfm">
          <li>       
           
            <a href="#" class="menu-title">
            <div class="button-wrap">
            <button class="btn btn-blend blue action-apply" type="submit" value="Submit">Apply</button>
            </div>
              Select Dates
            </a>
          </li>
          <li class="menu-pad"><input type="text" class="start-date datepicker" placeholder="Start Date (mm/dd/yyyy)" id="date1" name="date1"></li>
          <li class="menu-pad"><input type="text" class="end-date datepicker" placeholder="End Date (mm/dd/yyyy)"  id="date2" name="date2"></li>
          </form>
          
        </ul>  
       </div>   
    </li>
 
    <li>
      <a href="search.html#location" class="">Search by Neighborhood</a>
      <div class="submenu">
        <ul class="menu-list">
          <li>
            <a href="#" class="menu-title">      
              Select Neighborhood
            </a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=1" onClick="clearState();" >Castro/Noe Valley/Upper Market </a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=2" onClick="clearState();" >Chinatown</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=3" onClick="clearState();" >Civic Center/Hayes Valley</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=4" onClick="clearState();" >Embarcadero/Financial District</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?location=5" onClick="clearState();" >Fisherman's Wharf</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=6" onClick="clearState();" >Haight-Ashbury</a>
          </li>
         <!---
          <li class="menu-pad">
            <a href="search.cfm?location=7" onClick="clearState();" >Golden Gate Park/Sunset</a>
          </li>
		  --->
          <li class="menu-pad">
            <a href="search.cfm?location=8" onClick="clearState();" >Bayview</a>
          </li>
          <!---
           <li class="menu-pad">
            <a href="search.cfm?location=9" onClick="clearState();" >Japantown/Fillmore</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=10" onClick="clearState();" >Marina/Presidio</a>
          </li>
		  --->
          <li class="menu-pad">
            <a href="search.cfm?location=11" onClick="clearState();" >Mission District/Potrero</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=12" onClick="clearState();" >Nob Hill</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?location=13" onClick="clearState();" >North Beach</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=14" onClick="clearState();" >SOMA/Yerba Buena</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=15" onClick="clearState();" >Union Square</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=18" onClick="clearState();" >Fillmore</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=19" onClick="clearState();" >Japantown</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=20" onClick="clearState();" >Marina/Pacific Heights</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=21" onClick="clearState();" >Sunset</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=22" onClick="clearState();" >Central Market</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=23" onClick="clearState();" >Richmond/Presidio</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=24" onClick="clearState();" >Treasure Island</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=25" onClick="clearState();" >Napa Valley</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=26" onClick="clearState();" >East Bay</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?location=27" onClick="clearState();" >Sacramento</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?location=28" onClick="clearState();" >Monterey</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?location=29" onClick="clearState();" >Sausalito/Marin</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=30" onClick="clearState();" >SFO Area</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=31" onClick="clearState();" >Silicon Valley</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=32" onClick="clearState();" >Wine Country</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=33" onClick="clearState();" >Central Valley</a>
          </li>
         </ul> 
      </div>
    </li>
    <li><a href="http://sfarts.org/addevent/addevent.html">Submit Event</a></li>
	
    <li>
      <a href="about.cfm" class="">About</a>
      <div class="submenu">
        <ul class="menu-list">
          <li><a href="about.cfm">Overview</a></li>
          <li><a href="submission_policy.cfm">Submission Policy</a></li>
          <li><a href="http://sfarts.org/addevent/addevent.html">Submit Event</a></li>
          <li><a href="feedback_support.cfm">Feedback & Support</a></li>
          <li><a href="colophon.cfm">Colophon</a></li>
          <!---<li><a href="terms_of_use.cfm">Terms of Use</a></li>--->
        </ul>
      </div>
    </li>
    <li>
	<a href="http://www.sanfrancisco.travel">Visitor Information</a>
	</li>
  </ul>
  </div><!-- /relative -->
</div><!-- /menu-bar -->
<div class="hide submenu-bar"></div>



<div id="bounds">
  <div class="header">
    <div class="button-wrap"><a href="#" class="sficon-remove"></a></div>
    <div class="message"><a href="#">Get our Monthly Highlights via Email → </a></div>
  </div>
    
  <div id="main-wrap">
    <div class="inner-wrap scroll-pane overthrow">
      <div id="top-left" class="spot scroll-pane overthrow">
        <div class="spothead">
          <div class="button-wrap"><div class="btn btn-blend secondary green action-toggle">More</div></div>  
          <h3 class="title"><cfoutput>#currentEvent.discipline#</cfoutput></h3>
        </div><!-- /spothead -->
        <div class="inner">  
          <ul class="side-list">
          	<cfoutput query="otherEvents">
            <div id="#Event_Num#">
          <cfif currentEvent.event_Num EQ otherEvents.Event_Num>
         	
            <li><a href="event.cfm?Event_Num=#Event_Num#" class="side-list-selected"><div class="detail title">#Event_Name#</div>
            <cfelse>
            <li><a href="event.cfm?Event_Num=#Event_Num#"><div class="detail title">#Event_Name#</div>
            
            </cfif>
            
             <div class="detail org">#Org_Name#</div>
            <cfif start_date NEQ End_Date>
            <div class="detail date">  #DateFormat(start_date,"mmm d")# &rarr;  #DateFormat(End_Date,"mmm d")#<br></div></a></li>        
			<cfelseif 	start_date EQ End_Date> 
            <div class="detail date">  #DateFormat(End_Date,"mmm d")#<br></div></a></li>  
               
            </cfif>  
            </div>       
            </cfoutput>              
          </ul>  
        </div><!-- .inner -->  
      </div><!-- /#top-left -->
      <div class="middle-center-bottom-right overthrow">
        <div id="middle-center" class="spot scroll-pane overthrow">
          
          <div class="spothead">
            <div class="navbar actions">
              <ul class="nav">
                <li class="dropdown">
                <cfoutput>
                  <a href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.sfarts.org/event.cfm?event_num=#currentEvent.event_num#" class="sficon-facebook" target="_blank"></a>
                </li>
                <li><a href="http://www.twitter.com/share?url=http%3A%2F%2Fwww.sfarts.org/event.cfm?event_num=#currentEvent.event_num#"  class="sficon-twitter" target="_blank"></a></li>
                <li class="##"><a href="mailto:?Event on SF/Arts.org&body=Here is an event you may be interested in: #currentEvent.Event_Name# on #currentEvent.date_string#. The link is http%3A%2F%2Fwww.sfarts.org/event.cfm?event_num=#currentEvent.event_num#" class="sficon-paper-plane"></a></li>
                
                <!---
                <li><a href="##" class="sficon-calendar"></a></li>
				
				--->
                <li><a href="##" class="sficon-star-empty"  id="bookmarkButton"></a></li>
                </cfoutput>
              </ul>
            </div><!-- /navbar -->
            
          </div><!-- /spothead -->
  
          <div class="inner">
            <h2 class="title"><cfoutput>#currentEvent.Event_Name#</cfoutput></h2> 
            <h5><cfoutput>#currentEvent.Org_Name#</cfoutput></h5>        
            <p><cfoutput>#currentEvent.Event_Description#</cfoutput></p>
            
          </div><!-- /.inner -->
        </div><!-- /#middle-center -->
        
        <div id="bottom-right" class="spot scroll-pane overthrow">
          <div class="spothead">
            <h5 class="title">Event Info</h5>
          </div>
          <div class="inner">
        
            <div class="info-box time">
            	<cfif currentEvent.start_date NEQ currentEvent.end_date>
              <cfoutput>
              <cfif currentEvent.daysAway GT 1>
              Ends in #currentEvent.daysAway# days:<br>
             <cfelseif currentEvent.daysAway EQ 1>
             This event ends tomorrow!<br>
             <cfelseif currentEvent.daysAway EQ 0>
				This event ends today!<br>
             </cfif>
              #DateFormat(currentEvent.start_date,"mmm dd")# &rarr;  #DateFormat(currentEvent.End_Date,"mmm dd")#<br>
              #currentEvent.Time_String#
              </cfoutput>
              <cfelse>
              <cfoutput>
              
              <cfif currentEvent.daysAway GT 1>
              This event is in #currentEvent.daysAway# days:<br>
              <cfelseif currentEvent.daysAway EQ 1>
              This event is tomorrow!<br>
              <cfelseif currentEvent.daysAway EQ 0>
              This event is today!<br>
              </cfif>
              #DateFormat(currentEvent.End_Date,"mmm dd")#<br>
               #currentEvent.Time_String#
               </cfoutput>
              </cfif>
            </div>
            
            <div class="info-box tickets">
            <cfoutput>
              #currentEvent.Ticket_String#
              </cfoutput>
            </div>
            
            <div class="info-box">
            <cfoutput>
              <div class="title">#currentEvent.Venue_Name#</div>
              <div class="address">#currentEvent.Venue_Address#, #currentEvent.Venue_City#  </div>
              <div class="info">Info: #currentEvent.Event_Phone#</div>
              <div class="venue">Venue: #currentEvent.Venue_Phone#</div>
              </cfoutput>
            </div>
            <cfoutput>
            <cfif currentEvent.Org_Web NEQ ''>
            <a href="#currentEvent.Org_Web#" target="_blank" class="btn btn-block btn-large">Website</a>
            </cfif>
            <cfif currentEvent.TicketLink NEQ ''>
            <a href="#currentEvent.TicketLink#" target="_blank" class="btn btn-block btn-large">Tickets</a>
            </cfif>
            <a href="https://maps.google.com?q=#currentEvent.Venue_Name#,#currentEvent.Venue_Address# #currentEvent.Venue_City#, CA" target="_blank" class="btn btn-block btn-large">Map</a>
            </cfoutput>
          </div><!-- /.inner -->    
        </div><!-- /#bottom-right -->
      </div><!--/#middle-center-bottom-right -->
      <!--<div class="overlay"></div>-->
    </div><!-- /.inner-wrap -->
  </div><!-- /#main-wrap -->
</div><!--/ #bounds -->

</div><!-- /#wrapper -->


  <!-- Load JS here for best performance -->
  
  <script type="text/javascript">
      less = {
          env: "production", // or "production"
          dumpLineNumbers: "mediaquery"
      };
  </script>
  
  <script type="text/javascript" src="http://fast.fonts.net/jsapi/a130c1a8-90b4-49d3-b459-6e4ce45cea2e.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
  <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
  <script src="js/response.min.js"></script>  
  <script src="js/compressed.js"></script>
  <script src="js/custom.js"></script>
   <script src="js/Handlebars.js"></script>
   <!---
   <script src="js/jquery.scrollTo.min.js"></script>
   --->
	 <script src="js/moment.js"></script>
	<script src="js/jquery.serializecfjson-0.2.min.js"></script>
	<script type="text/javascript" src="js/sfARTS.js"></script>  
    
    
 <cfoutput>
  <script>
  $(document).ready(function(e) {
    $('.overlay').hide();
	
	scrollTarget = getParam("Event_Num");
	
	 $('.scroll-pane').animate({scrollTop: $("###Event_Num#").offset().top-100}, 500	);
	
	 $("##global-search-bar").keyup(function(event){
    		if(event.keyCode == 13){
        	handleGlobalSearchBarClick($('##global-search-bar').val());
    }
	
});
		
	$( ".end-date").live('focus', function() {
		
	//$( ".end-date" ).datepicker('setDate', new Date());
	//alert($('.end-date').val());
	
	});
	
	$( ".start-date").live('focus', function() {
		//$( ".start-date" ).datepicker({ minDate: 0 });
	//$( ".start-date" ).datepicker('setDate', new Date());
	});
		
	  $('##bookmarkButton').click(function( event ) {	
    	var storedEvents = [];
		if (localStorage.getItem('events')){
		retrievedObject = localStorage.getItem('events');
		storedEvents = JSON.parse(retrievedObject);
		}
		var cleanEventName = "#sfData.doEncode(currentEvent.Event_Name)#";
		
		var eventDetail = {eventName:cleanEventName ,eventDateString:"#currentEvent.Date_String#",end_date:"#currentEvent.end_date#",event_num:"#currentEvent.event_num#",org_name:"#currentEvent.org_name#"};
		
		//alert(!$('##bookmarkButton').hasClass('sficon-star-empty'));
		if (!($('##bookmarkButton').hasClass('sficon-star-empty')))
		{
		//alert('we are adding');	
		storedEvents.push(eventDetail);
		localStorage.setItem('events',JSON.stringify(storedEvents));
		$('##bookmarkButton').removeClass('sficon-star-empty');
		$('##bookmarkButton').addClass('sficon-star');
		}else{
		//alert('we are removing');	
		$.each(storedEvents,function(index, obj)       {
					if(obj.event_num == #currentEvent.event_num#){
       				 storedEvents.splice(index,1);
       				 console.log(storedEvents); 
       				 localStorage['events']= JSON.stringify(storedEvents);}});
		
		}
		
  });
  	
	var storedEvents = [];
		if (localStorage.getItem('events')){
		retrievedObject = localStorage.getItem('events');
		storedEvents = JSON.parse(retrievedObject);
		$.each(storedEvents,function(index, obj)       {
			if(obj.event_num == #currentEvent.event_num#)
			{
				$('##bookmarkButton').removeClass('sficon-star-empty');
		$('##bookmarkButton').addClass('sficon-star');
			}
		});
		}	

						
});
  </script>
  </cfoutput>
 <!--VISISTAT SNIPPET//-->
<SCRIPT TYPE="text/javascript">var DID=12737;</SCRIPT>
<SCRIPT SRC="http://sniff.visistat.com/sniff.js" TYPE="text/javascript"></SCRIPT>
<!--VISISTAT SNIPPET//-->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-9189676-1', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>
