<!DOCTYPE html>
<html lang="en" prefix="og: http://ogp.me/ns#">
  
<head>
  <meta charset="utf-8">
  <!--- init normal CFC for non ajax calls  --->

<cfscript>
sfData = CreateObject("Component","data/new_v4");
sfData.init();
pastFeatures = sfData.getPastFeatures();
pastMonths = sfData.getPastMonths();

</cfscript> 
 <cfparam name="URL.featureID" type="numeric" default="#pastFeatures.featureID[1]#">
<cfscript>
feature = sfData.getFeature(URL.featureID);
</cfscript>
<cfoutput>
<meta property="og:title" content="#feature.headline#" />
<meta property="og:type" content="article" />
<meta property="og:url" content="http://www.sfarts.org/feature.cfm?featureID=#featureID#&title=#feature.seoTitle#" />
<meta property="og:image" content="http://www.sfarts.org/editorial_images/#feature.storyPic#" />
</cfoutput>
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
  
<body class="two-spot feature">
<div id="wrapper">
  
<div class="navbar main-menu">
  <ul class="nav">
    <li><a href="#" class="menu-menu sficon-menu" title="Menu"></a></li>
    <li><a href="#/back" onClick="window.history.go(-1)" class="menu-back sficon-left" title="Back"></a></li>
    <li><a href="nearby.cfm" class="menu-location sficon-location" title="Nearby" ></a></li>
    <li><a href="bookmarks.cfm" class="menu-bookmarks sficon-star" title="Bookmarks"></a></li>
    <li><a href="#/search" class="menu-search sficon-search" title="Search"></a></li>
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
      <a href="about.cfm" class="">About</a>
      <div class="submenu">
        <ul class="menu-list">
          <li><a href="/" class="">Overview</a></li>
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
          <div class="button-wrap"><div class="btn btn-blend secondary orange action-toggle">More</div></div>  
          <h3 class="title">Features</h3>
        </div><!-- /spothead -->
        <div class="inner">  
          <ul class="side-list">
          <cfoutput>
          <cfloop query="pastMonths">          
            <li><h4>#dateformat(issue_date,"mmmm, yyyy")#</h4>
              <ul>
              <cfquery  dbtype="query" name="featureLoop">
              		select * from pastFeatures
                   where defaultDate = #defaultDate# 
              </cfquery>
              <cfloop query="featureLoop">
              <cfif #featureID# NEQ #feature.featureID#>
              <li><a href="feature.cfm?featureID=#featureID#&title=#seoTitle#"><div class="detail title">#headline#</div></a></li> 
              <cfelse>
               <li style="background-color: white; color: ##126FDD;"><a href="feature.cfm?featureID=#featureID#&title=#seoTitle#"><div class="detail title">#headline#</div></a></li> 
              </cfif>
              </cfloop>
            </cfloop>
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
                  <a href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.sfarts.org/feature.cfm?featureID=#featureID#%26title=#feature.seoTitle#" class="sficon-facebook" target="_blank"></a>
             
       </li>
                <li><a href="http://www.twitter.com/share?url=http%3A%2F%2Fwww.sfarts.org/feature.cfm?featureID=#featureID#%26title=#feature.seoTitle#" class="sficon-twitter"></a></li>
                
                <li class="##">
<a href="mailto:?subject=Article on SF/Arts.org&body=http%3A%2F%2Fwww.sfarts.org/feature.cfm?featureID=#featureID#%26title=#feature.seoTitle#" class="sficon-paper-plane"></a>
</li>
                 </cfoutput> 
              </ul>
            </div><!-- /navbar -->
            
          </div><!-- /spothead -->
          <div class="feature-cover">
          <cfoutput query="feature">
            <img src="editorial_images/#storyPic#">
           
            <div class="fade-overlay">
              <h1 class="title">#headline#</h1>
              <h5 class="author">#credit#</h5>
            </div>
          </div>          
          <div class="inner">
          <!---
            <p class="caption">© Proin purus sapien, consequat et lacinia quis, rutrum ut erat. In eu nibh a risus dignissim pharetra pellentesque congue metus et odio laoreet mollis.</p>
			--->
            <p class="lead-text">#teaser#</p>
            #text#
            </cfoutput> 
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
