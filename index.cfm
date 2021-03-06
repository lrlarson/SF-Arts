<!DOCTYPE html>
<html lang="en" prefix="og: http://ogp.me/ns#">
  
<head>
  <meta charset="utf-8">
  <META NAME ="title" CONTENT="San Francisco Arts Monthly">
<META NAME="description" CONTENT="A monthly magazine featuring the most comprehensive listing of arts and cultural events in San Francisco">
<META NAME="keywords" CONTENT="san francisco arts, bay area arts, sf arts, art, monthly, visual art, calendars, art, dance, music, theater, theatre, kids, children, , listings, festival, literature, books, literary, museum, gallery, galleries, film, video, listing, performance, event">

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
<script>

</script>

<cfscript>
sfData = CreateObject("Component","data/new_v4");
sfData.init();
currentEditorial = sfData.getHomePageEditorialNew();
</cfscript>
</head>
  
<body class="one-spot home">
<div id="loader"><div class="vjs-loading-spinner"></div></div>
<div id="wrapper">
  
<div class="navbar main-menu">
  <ul class="nav">
    <li><a href="#" class="menu-menu sficon-menu" title="Menu"></a></li>
    <li><a href="#/back" onClick="window.history.go(-1);return false;" class="menu-back sficon-left" title="Back"></a></li>
    <li><a href="nearby.cfm" class="menu-location sficon-location" title="Nearby" ></a></li>
    <li><a href="bookmarks.cfm" class="menu-bookmarks sficon-star" title="Bookmarks"></a></li>
    <li><a href="search.cfm?date=today" onClick="clearState();" class="menu-search sficon-search" title="Search"></a></li>
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
    <li><a href="search.cfm?date=today" onClick="clearState();" class="">Today's Events</a></li>
    <li><a href="search.cfm?date=weekend" onClick="clearState();" class="">This Weekend</a></li>
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
            <a href="search.cfm?disp=2" onClick="clearState();" >Dance</a>
          </li>
             <li class="menu-pad">
            <a href="search.cfm?disp=5" onClick="clearState();" >Festivals</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?disp=6" onClick="clearState();" >Film/Video</a>
          </li>
            <li class="menu-pad">
            <a href="search.cfm?disp=8" onClick="clearState();" >Galleries</a>
          </li>
           <li class="menu-pad">
            <a href="search.cfm?disp=4" onClick="clearState();" >Literary Arts</a>
          </li>
             <li class="menu-pad">
            <a href="search.cfm?disp=5" onClick="clearState();" >Festivals</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?disp=3" onClick="clearState();" >Music</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?disp=7" onClick="clearState();" >Museums</a>
          </li>
          <li class="menu-pad">
            <a href="search.cfm?disp=13" onClick="clearState();" >Public Art</a>
          </li>          
          <li class="menu-pad">
            <a href="search.cfm?disp=1" onClick="clearState();" >Theater</a>
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
    <div class="message"><a href="#">Welcome to the new SF/Arts Website! Please send us your feedback → </a></div>
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
                <h5 class="type">Editorial</h5>
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
                    <li class="first all" id="99"><a href="#" onClick="dispPod=99;getPods(99);getDispInfo(99);">Featured</a></li>
                    <li class="children" id="9"><a href="#" onClick="dispPod=9;getPods(9);getDispInfo(9);">Children</a></li>
                    <li class="dance" id="2"><a href="#" onClick="dispPod=2;getPods(2);getDispInfo(2);">Dance</a></li>
                    <li class="festivals" id="5"><a href="#" onClick="dispPod=5;getPods(5);getDispInfo(5);" >Festivals</a></li>
                    <li class="film" id="6"><a href="#" onClick="dispPod=6;getPods(6);getDispInfo(6);">Film/Video</a></li>
                    <li class="galleries" id="8"><a href="#" onClick="dispPod=8;getPods(8);getDispInfo(8);">Galleries</a></li>
                    <li class="literary" id="4"><a href="#" onClick="dispPod=4;getPods(4);getDispInfo(4);">Literary Arts</a></li>
                    <li class="more" id="10"><a href="#" onClick="dispPod=10;getPods(10);getDispInfo(10);">More For Less</a></li>
                    <li class="music" id="3"><a href="#"  onClick="dispPod=3;getPods(3);getDispInfo(3);">Music</a></li>
                    <li class="museums" id="7"><a href="#" onClick="dispPod=7;getPods(7);getDispInfo(7);">Museums</a></li>
                    <li class="public" id="13"><a href="#" onClick="dispPod=13;getPods(13);getDispInfo(13);">Public Art</a></li>
                    <li class="last theater" id="1"><a href="#" onClick="dispPod=1;getPods(1);getDispInfo(1);">Theater</a></li>  
                  </ul>
                  <div class="hide sponsored">
                  <!---
                    <h6>Sponsored by</h6>
                    <img src="images/boa.svg" alt="Bank of America" width="101" height="41" />  
					--->  
                  </div>
                </div>
                
                <div class="browse">
                  <div class="load-wrap">
                    <div class="hide browse-top hide"><!--- insert template here  ---></div>
                    <script id="disp-template" type="x-handlebars-template">
						{{#each data}}
						<div class="split cat-title"><h5>{{discipline}}<a class="rss" href="http://www.sfarts.org/rss/rss.cfm?disp_num={{disp_num}}">RSS</a></h5></div>
                      <div class="split curator"><h5><div class="underline">Curated By</div> {{curatedby}}</h5></div>
                      <div class="split see-more">{{{hideMoreForLessTop disp_num discipline}}}</div>
						{{/each}}
					</script>
                    <ul class="pods grid-view" id="grid-view"><!--- insert template here  ---></ul>
                    <script id="pods-template" type="x-handlebars-template">
							   {{#each data}}
							 <li class="pod">
                        		<a href="event.cfm?event_num={{event_num}}" class="link">
                            <div class="detail image"><img class="pod-img" src={{imagenamelarge}}  alt="image title"/></div>                                
                            <div class="pad">
                              <h4 class="title">{{title}}</h4>
							  	 <div class="detail date">{{dateDispSwitch discipline date_string}}</div>
                              
                              <div class="detail description">{{storytext}}</div>  
                            </div>
								</a>
							  </li>
								{{/each}}
							</script>

              <br>
                      
                    <span id="bottomSeeMore"><!--- insert template here  ---> </span>
                     <script id="seeMoreTemplate" type="x-handlebars-template">
					 {{#each data}}
					 	{{{hideMoreForLess disp_num discipline}}}
					  {{/each}}
					 </script>
                   
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
        <a href="#" class="read-more">Load All</a>
      </div><!--/#middle-center-bottom-right -->
      <!--<div class="overlay"></div>-->
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
  
  <script>
  $('#loader').show(); 
  </script>
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
  $('#loader').show(); 
  $(document).ready(function(e) {
	  
    
   

  onIndexPageLoad();
  checkDatesInBookmarks();
	
	
});
  </script>
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
