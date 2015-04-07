<!DOCTYPE html>
<html lang="en" prefix="og: http://ogp.me/ns#">
  
<head>
  <meta charset="utf-8">
  <title>SF/ARTS</title>
  <!-- meta name="viewport" content="width=device-width, initial-scale=1.0" -->
  <meta property="og:title" content="About SF/Arts" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.sfarts.org/about.cfm" />
<meta property="og:image" content="http://www.sfarts.org/images/sfarts-logo-big.jpg" />

  <link rel="shortcut icon" href="images/favicon.ico">
  <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.css" >
  <link rel="stylesheet" href="fonts/fontello/css/sfarts_icons.css">
  <link rel="stylesheet" href="fonts/fontello/css/animation.css">
  <link rel="stylesheet" type="text/css" href="css/main.css" />
  <!--[if IE 7]>
    <link rel="stylesheet" href="fonts/fontello/sfarts_icons-ie7.css">
  <![endif]-->    

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->
</head>
  
<body class="three-spot about">

<div id="wrapper">  
<div class="navbar main-menu">
  <ul class="nav">
    <li><a href="#" class="menu-menu sficon-menu" title="Menu"></a></li>
    <li><a href="#" onClick="javascript:window.history.back(-1);return false;" class="menu-back sficon-left" title="Back"></a></li>
    <li><a href="nearby.cfm" class="menu-location sficon-location" title="Nearby" ></a></li>
    <li><a href="bookmarks.cfm" class="menu-bookmarks sficon-star" title="BookMarks"></a></li>
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
</div>
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
          <div class="button-wrap"><div class="btn btn-blend secondary action-toggle">More</div></div> 
          <h3 class="title">About</h3>
        </div><!-- /spothead -->
        <div class="inner">  
          <ul class="side-list">
            <li><a href="about.cfm"><div class="detail title">Overview</div></a></li> <li><a href="submission_policy.cfm" class="side-list-selected"><div class="detail title">Submission Policy</div></a></li>     
            <li><a href="http://sfarts.org/addevent/addevent.html"><div class="detail title">Submit Event</div></a></li>
            <li><a href="feedback_support.cfm"><div class="detail title">Feedback & Support</div></a></li>               
            <li><a href="colophon.cfm"><div class="detail title">Colophon</div></a></li>
            <!---<li><a href="terms_of_use.cfm"><div class="detail title">Terms of Use</div></a></li>--->
          </ul>  
        </div><!-- .inner -->  
      </div><!-- /#top-left -->
      <div class="middle-center-bottom-right overthrow">
        <div id="middle-center" class="spot scroll-pane overthrow">
          
          <div class="spothead">
            <div class="navbar actions">
              <ul class="nav">
                <li class="dropdown">
                <a href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.sfarts.org/about.cfm" class="sficon-facebook" target="_blank"></a>
                </li>
                <li><a href="http://www.twitter.com/share?url=http%3A%2F%2Fwww.sfarts.org/about.cfm"  class="sficon-twitter" target="_blank"></a></li>
                <li class="##"><a href="mailto:?subject=SF/Arts :: Submission Policy&body=Here is a link to more information about SF/Arts' Submission Policy. The link:http%3A%2F%2Fwww.sfarts.org/submission_policy.cfm" class="sficon-paper-plane"></a></li>
                
              </ul>
            </div><!-- /navbar -->
            
          </div><!-- /spothead -->
  
          <div class="inner">
            <h2 class="title">Submission Policy</h2>
           <h5>Please carefully review the following criteria that must be met for an event to be included on the SFArts.org website.</h5>

          <p>SFArts.org is designed to inform the general public about upcoming arts events; it does not provide information about arts groups that do not offer events to the general public.</p>

          <p>Events must be arts-related and fall into one of the following categories: Dance, Film/Video, Literary, Music, Theater, Museum, Gallery, Special Events/Festivals and Children's Events. </p>

          <p>The event must be held in San Francisco, with the following exceptions:</p>

          </ul>
            <li>Groups funded by Grants for the Arts that are holding concerts, performances, exhibits, etc. in the Bay Area, but outside of San Francisco proper;</li><br>
            <li>SF/Arts advertisers with events in the larger Bay Area </li>
          </ul><br>

          <p>The arts event must be of interest and open to the general public, i.e., anyone may attend. Events such as camps, conferences, artist workshops or benefit fundraisers will generally not be listed.</p>

          <p>At this time, we do not list online events or apps.</p>

          <p>Please note that if a primary arts event has many ancillary events (e.g. lectures associated with a museum exhibition), we will refer our site visitor to the primary arts event&#39;s website for further information. If an event is a co-production, we will only list it once under the name of the event.</p>

          <p>We understand that advance information is not always complete with regard to programming, ticket prices, etc. but we ask that you provide us with that information as soon as you have it. Every effort will be made to include the information that you submit as quickly as possible. However, if the information is incomplete, SFArts.org reserves the right to request further information before it is posted.</p>

          <p>Event descriptions must be succinct; SFArts.org reserves the right to edit material that is submitted. If there is a factual error on the site, please notify us and it will be corrected as soon as possible. Otherwise, once the information is posted, it is final (with the exception of TBAs and unanticipated changes, which are corrected as notification of any error is received).</p>

          <p>Because the SFArts.org database has a complex and specific structure, it is necessary for us to make judgments about how to list an event. Listings are categorized according to how the public will most likely search for events.</p>

          <p>Because SFArts.org was developed specifically to promote non-profit arts activity, these events will be given priority. SFArts.org reserves the right to make all decisions regarding inclusion on the site.</p>

          <p>We at SF/Arts Media LLC share your goal of drawing as many people to as many arts events as possible. We look forward to working with the arts community to make our publication and website dynamic and effective . If you have any questions or need further information, please contact us at <a href="mailto:sfam@sbcglobal.net">sfam@sbcglobal.net.</a></p>

           <h2 class="title">How to Submit Events</h2> 
           <p>The most efficient way add your event on SFArts.org is by posting it yourself. A submission form is available <a href="http://sfarts.org/addevent/addevent.html" target="_blank">here</a>. The submission is reviewed by staff before it is posted to the website. You will be informed of the event's status via the email address you provide.
           </p> 

        </div><!-- /.inner -->
        </div><!-- /#middle-center -->
        
        <div id="bottom-right" class="spot scroll-pane overthrow">
          <div class="spothead">
            <h5 class="title">Contact Info</h5>
          </div>
          <div class="inner">
                    
            <div class="info-box">
              <div class="title detail">San Francisco Arts Monthly,</div>
              <div class="address">870 Market St. #1221, San Francisco, CA 94102</div>
              <div class="phone">(415) 956-5200 </div>              
            </div>
            
            <a href="mailto:sfam@sbcglobal.net" class="btn btn-block btn-large">Email</a>
            <!---
            <a href="#" class="btn btn-block btn-large">Map</a>
      --->
          </div><!-- /.inner -->    
        </div><!-- /#bottom-right -->
      </div><!--/#middle-center-bottom-right -->
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
