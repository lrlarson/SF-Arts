<!DOCTYPE html>
<html lang="en" prefix="og: http://ogp.me/ns#">
  
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

<!--- init normal CFC for non ajax calls  --->
<cfscript>
sfData = CreateObject("Component","data/new_v4");
sfData.init();
currentEditorial = sfData.getHomePageEditorialNew();
</cfscript>
</head>
  
<body class="one-spot home">
<div id="wrapper">
  
<div class="navbar main-menu">
  <ul class="nav">
    <li><a href="#" class="menu-menu sficon-menu" title="Menu"></a></li>
    <li><a href="#/back" onClick="window.history.go(-1);return false;" class="menu-back sficon-left" title="Back"></a></li>
    <li><a href="nearby.cfm" class="menu-location sficon-location" title="Nearby" ></a></li>
    <li><a href="bookmarks.cfm" class="menu-bookmarks sficon-star" title="Bookmarks"></a></li>
    <li><a href="#" class="menu-menu sficon-menu" title="Search"></a></li>
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
    <li><a href="index.cfm" class="">Home</a></li>
    <li><a href="feature.cfm" class="">Features</a></li>
    <!---
    <li><a href="calendar.html" class="">Calendar Highlights</a></li>
	--->
    <li><a href="search.cfm?date=today" class="">Today's Events</a></li>
    <li><a href="search.cfm?date=weekend" class="">This Weekend</a></li>
    <li><a href="#/search" class="menu-search " title="Search">Keyword</a></li>
    <li>
      <a href="#" class="">Search by Genre</a>
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
      <a href="#" class="">Search by Date</a>
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
      <a href="#" class="">Search by Location</a>
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
      <a href="about.cfm" class="">About</a>
      <div class="submenu">
        <ul class="menu-list">
          <li><a href="about.cfm" class="">Overview</a></li>
          <li><a href="http://sfarts.org/clientEdit/clientEventEdit.html" target="_blank" class="">Submit Event</a></li>
          <li><a href="about.cfm" class="">Feedback & Support</a></li>
          <li><a href="about.cfm" class="">Sponsorship Opportunities</a></li>
          <li><a href="about.cfm" class="">Terms of Use</a></li>
          <li><a href="about.cfm" class="">Colophon</a></li>
        </ul>
      </div>
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
          <h3 class="title">Features</h3>
        </div><!-- /spothead -->
        <div class="inner">  
        </div><!-- .inner -->  
      </div><!-- /#top-left -->
      <div class="middle-center-bottom-right overthrow">
        <div id="middle-center" class="spot scroll-pane overthrow">
          
            <div class="slideshow">
              <div class="slideshow-top">
                <h5 class="type">Features</h5>
                <div class="sfarts-logo"><img src="images/sfarts-logo-big.svg" /></div>
              </div> 
              <cfoutput query="currentEditorial"> 
              <div class="slide" style="background-image:url(editorial_images/#bannerPic#);">
                  
                  <div class="fade-overlay">
                    <div class="pad">
                      <h1 class="title"><a href="feature.cfm?title=#seoTitle#&featureID=#featureID#">#headline#</a></h1>
                      <h5 class="author">#credit#</h5>
                    </div>
                  </div>
                  
              </div><!-- /slide -->
              </cfoutput>             
              <div class="cycle-pager"></div>
            </div><!-- /slideshow -->
              
            <div class="highlights">
              <div class="handle"></div>
              <div class="drawer"></div>
              <div class="inside">
                <div class="categories" >
                  
                      <a name="highlights"></a>
                   <h5><a href="#highlights">Calendar Highlights</a></h5>
                  <select name="dispCBO"  onChange="getDispCombo(this);">
                    <option value="99" >All Categories</option>
                    <option value="9">Children</option>
                    <option value="2">Dance</option>
                    <option value="5">Festivals</option>
                    <option value="6">Film/Video</option>
                    <option value="8">Galleries</option>
                    <option value="4">Literary Arts</option>
                    <option value="10">More For Less</option>
                    <option value="3">Music</option>
                    <option value="7">Museums</option>
                    <option value="13">Public Art</option>
                    <option value="1">Theater</option>
                  </select>
                  <ul class="hide cat-list">
                    <li class="first all"><a href="#" onClick="dispPod=99;getPods(99);getDispInfo(99);">All</a></li>
                    <li class="children"><a href="#" onClick="dispPod=9;getPods(9);getDispInfo(9);">Children</a></li>
                    <li class="dance"><a href="#" onClick="dispPod=2;getPods(2);getDispInfo(2);">Dance</a></li>
                    <li class="festivals"><a href="#" onClick="dispPod=5;getPods(5);getDispInfo(5);" >Festivals</a></li>
                    <li class="film"><a href="#" onClick="dispPod=6;getPods(6);getDispInfo(6);">Film/Video</a></li>
                    <li class="galleries"><a href="#" onClick="dispPod=8;getPods(8);getDispInfo(8);">Galleries</a></li>
                    <li class="literary"><a href="#" onClick="dispPod=4;getPods(4);getDispInfo(4);">Literary Arts</a></li>
                    <li class="more"><a href="#" onClick="dispPod=10;getPods(10);getDispInfo(10);">More For Less</a></li>
                    <li class="music"><a href="#"  onClick="dispPod=3;getPods(3);getDispInfo(3);">Music</a></li>
                    <li class="museums"><a href="#" onClick="dispPod=7;getPods(7);getDispInfo(7);">Museums</a></li>
                    <li class="public"><a href="#" onClick="dispPod=13;getPods(13);getDispInfo(13);">Public Art</a></li>
                    <li class="last theater"><a href="#" onClick="dispPod=1;getPods(1);getDispInfo(1);">Theater</a></li>  
                  </ul>
                  <div class="hide sponsored">
                    <h6>Sponsored by</h6>
                    <img src="images/boa.svg" alt="Bank of America" width="101" height="41" />    
                  </div>
                </div>
                
                <div class="browse">
                  <div class="load-wrap">
                    <div class="hide browse-top hide"><!--- insert template here  ---></div>
                    <script id="disp-template" type="x-handlebars-template">
						{{#each data}}
						 <div class="split cat-title"><h5>{{discipline}}<a class="rss" href="#rss">RSS</a></h5></div>
                      <div class="split curator"><h5><div class="underline">Curator</div> {{curatedby}}</h5></div>
                      <div class="split see-more"><h5><a class="more" href="#more">See All {{discipline}} Events</a></h5></div>
						{{/each}}
					</script>
                    <ul class="pods grid-view" id="grid-view"><!--- insert template here  ---></ul>
                    <script id="pods-template" type="x-handlebars-template">
							   {{#each data}}
							 <li class="pod">
                        		<a href="event.cfm?event_num={{event_num}}" class="link">
                            <div class="detail image"><img class="pod-img" src={{imagename}}  alt="image title"/></div>                                
                            <div class="pad">
                              <h4 class="title">{{title}}</h4>
							  	 <div class="detail type">{{dateDispSwitch discipline date_string}}</div>
                              
                              <div class="detail description">{{storytext}}</div>  
                            </div>
								</a>
							  </li>
								{{/each}}
							</script>
                      
                    
                    <a href="#" onClick="getPods(99);dispPod = 99;" class="read-more" style="display:none">See All Highlights</a>
                  </div><!-- load-wrap -->
                </div><!-- browse -->
              </div><!-- inside -->
            </div><!-- /highlights -->  
              
              
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
          env: "production", // or "production" or development
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
	 <script src="js/moment.js"></script>
	<script src="js/jquery.serializecfjson-0.2.min.js"></script>
	<script type="text/javascript" src="js/sfARTS.js"></script>  
  
 
 
 
 
 
   <script type="text/javascript">
  $(document).ready(function(e) {
   
   checkDatesInBookmarks();
   
     $("#global-search-bar").keyup(function(event){
    		if(event.keyCode == 13){
        	handleGlobalSearchBarClick($('#global-search-bar').val());
    }
	
});
   
//$( ".end-date" ).datepicker('setDate', new Date());
  //  $( ".end-date" ).datepicker('setDate', new Date());
   firstPass = true;
   dispClick = false;
   dispPod = 98;
    getPods(98);
	$('.overlay').hide(200);
	
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
