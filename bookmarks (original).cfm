<!DOCTYPE html>
<html lang="en">
  
<head>
  <meta charset="utf-8">
  <title>SF/ARTS</title>
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
  
<body class="one-spot bookmarks with-header">
<div id="wrapper">
  
<div class="navbar main-menu">
  <ul class="nav">
    <li><a href="#" class="menu-menu sficon-menu" title="Menu"></a></li>
    <li><a href="#" onClick="window.history.go(-1);return false;" class="menu-back sficon-left" title="Back"></a></li>
    <li><a href="nearby.cfm" class="menu-location sficon-location" title="Nearby" ></a></li>
    <li><a href="bookmarks.cfm" class="menu-bookmarks sficon-star" title="Bookmarks"></a></li>
    <li><a href="search.cfm?date=today" class="menu-search sficon-search" title="Search"></a></li>
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
            <a href="search.cfm?location=1">Castro/Upper Market</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=2">Chinatown</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=3">Civic Center</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=4">Embarcadero/Financial District</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?location=5">Fisherman's Wharf</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=6">Haight-Ashbury</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=7">Golden Gate Park/Sunset</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=8">Bayview/Candlestick Point</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?location=9">Japantown/Fillmore</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=10">Marina/Presidio</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=11">Mission Distric</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=12">Nob Hill</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?location=13">North Beach</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=14">SOMA/Yerba Buena</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?location=15">Union Square</a>
          </li>
         </ul> 
      </div>
    </li>
    <li>
      <a href="about.html" class="">About</a>
      <div class="submenu">
        <ul class="menu-list">
          <li><a href="/" class="">Overview</a></li>
          <li><a href="features.html" class="">Submit Event</a></li>
          <li><a href="calendar.html" class="">Feedback & Support</a></li>
          <li><a href="calendar.html" class="">Sponsorship Opportunities</a></li>
          <li><a href="calendar.html" class="">Terms of Use</a></li>
          <li><a href="calendar.html" class="">Colophon</a></li>
        </ul>
      </div>
    </li>
  </ul>
  </div><!-- /relative -->
</div><!-- /menu-bar -->
<div class="hide submenu-bar"></div>  
  

<div id="bounds">
  <div class="header">
    <div class="button-wrap"><a href="#" class="btn btn-blend blue action-edit">Edit</a></div>
    <h3 class="title">Bookmarks</h3>
  </div>
    
  <div id="main-wrap">
    <div class="inner-wrap scroll-pane overthrow">
      <div id="top-left" class="spot scroll-pane overthrow">
        <div class="spothead">
          <h3 class="title"></h3>
        </div><!-- /spothead -->
        <div class="inner">  
        </div><!-- .inner -->  
      </div><!-- /#top-left -->
      <div class="middle-center-bottom-right overthrow">
        <div id="middle-center" class="spot scroll-pane overthrow">
          
          <div class="inner"><ul class="pods small-view"><!--- insert template here  ---></ul></div><!-- /.inner -->
        
        <script id="bookmarkedEvents-template" type="x-handlebars-template">
       {{#each this}} 
		<li class="pod">
		 
                <a href="event.cfm?Event_Num={{event_num}}" class="link" >
                  <div class="button-wrap action-remove"><span class="btn btn-danger sficon-remove" id="{{event_num}}"></span></div> 
				  <!---
                  <div class="detail image"><img src="temp/pod-250.png" class="pod-img" alt="image title"/></div>--->
                  <h4 class="title">{{Decode eventName}}</h4>
                  <div class="detail time">{{eventDateString}}</div>
                  <div class="detail type">{{org_name}}</div>
                </a>
              </li>
			 {{else}}
			 <li class="pod">
		
                <a href="#" class="link">
				
                  <div class="button-wrap action-remove"><span class="btn btn-danger sficon-remove" id="{{event_num}}"></span></div> 
				  <!---
                  <div class="detail image"><img src="temp/pod-250.png" class="pod-img" alt="image title"/></div>
				  --->
                  <h4 class="title">No Current Bookmarks</h4>
                  <div class="detail time"></div>
                  <div class="detail type"></div>
                </a>
              </li> 
			{{/each}}  
        </script>
        </div><!-- /#middle-center -->
        
        <div id="bottom-right" class="spot scroll-pane overthrow">
          <div class="spothead">
            <h5 class="title"></h5>
          </div>
          <div class="inner">
    
          </div><!-- /.inner -->    
        </div><!-- /#bottom-right -->
      </div><!--/#middle-center-bottom-right -->
      <!--<div class="overlay"></div>-->
    </div><!-- /.inner-wrap -->
  </div><!-- /#main-wrap -->
</div><!--/ #bounds -->

</div><!-- /#wrapper -->


  <!-- Load JS here for best performance -->
  
 <script type="text/javascript" src="http://fast.fonts.net/jsapi/a130c1a8-90b4-49d3-b459-6e4ce45cea2e.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
  <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
  <script src="js/response.min.js"></script>  
  <script src="js/compressed.js"></script>
  <script src="js/custom.js"></script>
   <script src="js/Handlebars.js"></script>
	 <script src="js/moment.js"></script>
	<script src="js/jquery.serializecfjson-0.2.min.js"></script>
	<script type="text/javascript" src="js/sfARTS.js"></script>  

  <script>
  $(document).ready(function(e) {
	  $('.overlay').hide(); 
	  
	   $("#global-search-bar").keyup(function(event){
    		if(event.keyCode == 13){
        	handleGlobalSearchBarClick($('#global-search-bar').val());
    }
	
});
	
	  initializeBookMarksPage(200);
   			$( ".end-date").live('focus', function() {
		
	$( ".end-date" ).datepicker('setDate', new Date());
	//alert($('.end-date').val());
	
	});
	$( ".start-date").live('focus', function() {
		//$( ".start-date" ).datepicker({ minDate: 0 });
	$( ".start-date" ).datepicker('setDate', new Date());
	});
	
	$('.btn.btn-danger.sficon-remove').live('click',function(e){
		e.preventDefault(); 
		//alert(this);
		var storedEvents = [];
		if (localStorage.getItem('events')){
		retrievedObject = localStorage.getItem('events');
		storedEvents = JSON.parse(retrievedObject);
		var target = this.id;
		}
		
	$.each(storedEvents,function(index, obj)       {
					if(obj.event_num == target){
       				 storedEvents.splice(index,1);
       				 console.log(storedEvents); 
       				 localStorage['events']= JSON.stringify(storedEvents);}
					 return;
					 });
	
					 
	initializeBookMarksPage(200);	
	});
		
});
  </script>
  
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
