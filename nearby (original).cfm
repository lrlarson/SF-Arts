<!DOCTYPE html>
<html lang="en" xmlns:og="http://opengraphprotocol.org/schema/">  
  
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
  
<body class="one-spot nearby with-header">
<div id="wrapper">


<div class="navbar main-menu">
  <ul class="nav">
    <li><a href="#" class="menu-menu sficon-menu" title="Menu"></a></li>
    <li><a href="#/back" onClick="window.history.go(-1);return false;" class="menu-back sficon-left" title="Back"></a></li>
    <!---
    <li><a href="nearby.html" class="menu-location sficon-location" title="Nearby" ></a></li>
	--->
    <li><a href="bookmarks.cfm" class="menu-bookmarks sficon-star" title="Bookmarks"></a></li>
    <li><a href="#" class="menu-search sficon-search" title="Search"></a></li>
  </ul>
</div><!-- /navbar -->

<div class="hide search-bar"><input id="global-search-bar" placeholder="Search by Keyword"  /><a id="global-search-submit" onClick="handleGlobalSearchBarClick($('#global-search-bar').val());">Press Enter</a></div>

<div class="menu-bar">
  <div class="relative">
  <ul class="menu-list">
    <li>
        
      <a href="#" class="menu-title">
        <div class="button-wrap"><div href="#" class="btn btn-blend green action-close">Close</div></div>
        Menu
      </a>
    </li>
    <li><a href="home.cfm" class="">Home</a></li>
    <li><a href="feature.cfm" class="">Features</a></li>
    <!---
    <li><a href="calendar.html" class="">Calendar Highlights</a></li>
	--->
    <li><a href="search.cfm?date=today" class="">Today's Events</a></li>
    <li><a href="search.cfm?date=weekend" class="">This Weekend</a></li>
    <li>
      <a href="search.html#genre" class="">Search by Genre</a>
      <div class="submenu">
          <ul class="menu-list">
            <li>
                      
              <a href="#" class="menu-title">
                <div class="button-wrap"><div class="btn btn-blend blue action-apply"></div></div>  
                Select Genre
              </a>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox" id="childrenDisp" onClick="checkBoxClick(9);"><span class="icons" ><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Children
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox" id="dance" onClick="checkBoxClick(2);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><span class="discipline"><input type="checkbox" data-toggle="checkbox"  value="2"></span>
              Dance
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox" id="festivals" onClick="checkBoxClick(5);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><span class="discipline"><input type="checkbox" data-toggle="checkbox" value="5"></span>
              Festivals
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox" onClick="checkBoxClick(6);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><span class="discipline"><input type="checkbox" data-toggle="checkbox" id="film" value="6"></span>
              Film/Video
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox" onClick="checkBoxClick(8);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="8">
              Galleries
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"onClick="checkBoxClick(4);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="4">
              Literary Arts
              </label>
            </li>
            <!---
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox" onClick="checkBoxClick(10);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="10">
              More for Less
              </label>
			  --->
              
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox" onClick="checkBoxClick(3);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="3">
              Music
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"onClick="checkBoxClick(7);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="7">
              Museums
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox" onClick="checkBoxClick(13);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="13">
              Public Art
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox" onClick="checkBoxClick(1);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="1">
              Theater
              </label>
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
      <a href="search.html#location" class="">Search by Location</a>
      <div class="submenu">
       <ul class="menu-list">
          <li>
            <a href="#" class="menu-title">
              <div class="button-wrap"><div class="btn btn-blend blue action-apply">Apply</div></div>          
              Neighborhoods
            </a>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(1);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-unchecked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Castro/Upper Market
            </label>
          </li>
           <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(2);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-unchecked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox2" value="">
            Chinatown
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(3);"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-unchecked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox3" value="">
            Civic Center
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(4);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox4" value="">
            Embarcadero/Financial District
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(5);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox5" value="">
            Fisherman's Wharf
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(6);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox6" value="">
            Haight-Ashbury
            </label>            
          </li>
           <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(7);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox7" value="">
            Golden Gate Park/Sunset
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(8);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox8" value="">
            Bayview/Candlestick Point
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(9);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox9" value="">
            Japantown/Fillmore
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(10);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox10" value="">
            Marina/Presidio
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(11);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox11" value="">
            Mission District
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(12);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox12" value="">
            Nob Hill
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(13);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox13" value="">
            North Beach
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(14);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox14" value="">
            SOMA/Yerba Buena
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox" onClick="locationViewBoxClick(15);">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox15" value="">
            Union Square
            </label>            
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
    <div class="button-wrap"><a href="#" class="btn btn-blend blue action-refresh">Refresh</a></div>
    <h3 class="title">Nearby</h3>
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
          
          <div class="inner">
            <ul class="pods small-view"><!--- insert template here ---></ul><!-- /pods -->
             <script id="distance-template" type="x-handlebars-template">
           	{{#each this}} 
			 	<li class="pod">
                <a href="event.cfm?event_num={{event_num}}" class="link">
                  <div class="detail distance"><div class="number">{{instancedistance}}</div><div class="miles"></div></div>
                <!---  
				  <div class="detail image"><img src="" class="pod-img" alt="image title"/></div>
				  --->
                  <h4 class="title">{{event_name}}</h4>
                  <div class="detail time">{{time_string}}</div>
                  <div class="detail type">{{discipline}}</div>
                </a>
              </li>
			   {{/each}}
			
			
			
            </script>
          </div><!-- /.inner -->
        </div><!-- /#middle-center -->
        
        <div id="bottom-right" class="spot scroll-pane overthrow">
          <div class="spothead">
            <h5 class="title"></h5>
          </div>
          <div class="inner">
    
          </div><!-- /.inner -->    
        </div><!-- /#bottom-right -->
      </div><!--/#middle-center-bottom-right -->
      <div class="overlay"></div>
    </div><!-- /.inner-wrap -->
  </div><!-- /#main-wrap -->
</div><!--/ #bounds -->

</div><!-- /#wrapper -->


  <!-- Load JS here for best performance -->
  
  <script type="text/javascript">
      less = {
          env: "development", // or "production"
          dumpLineNumbers: "mediaquery"
      };
  </script>
  
  <script src="js/less.min.js"></script>
  <script type="text/javascript" src="http://fast.fonts.net/jsapi/a130c1a8-90b4-49d3-b459-6e4ce45cea2e.js"></script>

  <script src="js/jquery-1.8.3.min.js"></script>
  <script src="js/jquery-ui-1.10.3.custom.min.js"></script>
  <script src="js/jquery.ui.touch-punch.min.js"></script>
	
   <script src="js/Handlebars.js"></script>
 <script type="text/javascript" src="js/sfARTS.js"></script>  
    
     <script src="js/latlon.js"></script>
    <script src="js/geo.js"></script> 
    <script type="text/javascript"     src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDeAoBiPUncBuyH5-efc2csHqJcAHIn50E&sensor=true"></script>
    
  <script src="js/bootstrap.min.js"></script>
  <script src="js/bootstrap-select.js"></script>
  <script src="js/bootstrap-switch.js"></script>
  <script src="js/flatui-checkbox.js"></script>
  <script src="js/flatui-radio.js"></script>
  <script src="js/jquery.tagsinput.js"></script>
  <script src="js/jquery.placeholder.js"></script>
  <script src="js/jquery.stacktable.js"></script>
  <script src="js/video.js"></script>

  <script src="js/fixedfixed.min.js"></script>
  <script src="js/overthrow.js"></script>
  <script src="js/modernizr-latest.js"></script>
  <script src="js/response.min.js"></script>
   <script src="js/jquery.serializecfjson-0.2.min.js"></script>

  <script src="js/nicescroll/jquery.nicescroll.min.js"></script> 
  <script src="js/waypoints.min.js"></script>  
  <script src="js/masonry.min.js"></script>
  <script src="js/jquery.cycle2.min.js"></script>
  <script src="js/jquery.cycle2.swipe.min.js"></script>
  <script src="js/cycle2-ios6fix.js"></script>
  <script src="js/jquery.touchswipe.min.js"></script>
  <script src="js/imagesloaded.min.js"></script>

  <script src="js/custom.js"></script>
  
  <script>
  $(document).ready(function(e) {
      $('.overlay').hide();
	var myGlobalLocation = '';
	var globalTestLocation = '';
	var htmlContent = '';
	
	getLocation();
	$( ".end-date").live('focus', function() {
		
	$( ".end-date" ).datepicker('setDate', new Date());
	//alert($('.end-date').val());
	
	});
	$( ".start-date").live('focus', function() {
		//$( ".start-date" ).datepicker({ minDate: 0 });
	$( ".start-date" ).datepicker('setDate', new Date());
	});
	
});
  </script>
</body>
</html>
