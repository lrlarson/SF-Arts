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

<!--- init normal CFC for non ajax calls  --->
<cfscript>
sfData = CreateObject("Component","data/new_v4");
sfData.init();
currentEditorial = sfData.getHomePageEditorial();
</cfscript>
</head>
  
<body class="one-spot home">
<div id="wrapper">
  
<div class="navbar main-menu">
  <ul class="nav">
    <li><a href="#" class="menu-menu sficon-menu" title="Menu"></a></li>
    <li><a href="#/back" onClick="window.history.go(-1);return false;" class="menu-back sficon-left" title="Back"></a></li>
    <li><a href="nearby.html" class="menu-location sficon-location" title="Nearby" ></a></li>
    <li><a href="bookmarks.html" class="menu-bookmarks sficon-star" title="Bookmarks"></a></li>
    <li><a href="#/search" class="menu-search sficon-search" title="Search"></a></li>
  </ul>
</div><!-- /navbar -->

<div class="hide search-bar"><input id="global-search-bar" placeholder="Search..."  /><a id="global-search-submit">Press Enter</a></div>

<div class="menu-bar">
  <div class="relative">
  <ul class="menu-list">
    <li>
        
      <a href="#" class="menu-title">
        <div class="button-wrap"><div href="#" class="btn btn-blend green action-close">Close</div></div>
        Menu
      </a>
    </li>
    <li><a href="home.html" class="">Home</a></li>
    <li><a href="features.html" class="">Features</a></li>
    <li><a href="calendar.html" class="">Calendar Highlights</a></li>
    <li><a href="search.html#today" class="">Today's Events</a></li>
    <li><a href="search.html#weekend" class="">This Weekend</a></li>
    <li>
      <a href="search.html#genre" class="">Search by Genre</a>
      <div class="submenu">
          <ul class="menu-list">
            <li>
                      
              <a href="#" class="menu-title">
                <div class="button-wrap"><div class="btn btn-blend blue action-apply">Apply</div></div>  
                Select Genres
              </a>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Children
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Dance
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Festivals
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Film/Video
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Galleries
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Literary Arts
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              More for Less
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Music
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Museums
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
              Public Arts
              </label>
            </li>
            <li class="menu-pad">
              <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
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
          <li>       
            <a href="#" class="menu-title">
            <div class="button-wrap"><div class="btn btn-blend blue action-apply">Apply</div></div>
              Select Dates
            </a>
          </li>
          <li class="menu-pad"><input type="text" class="start-date datepicker" placeholder="Start Date (mm/dd/yyyy)"></li>
          <li class="menu-pad"><input type="text" class="end-date datepicker" placeholder="End Date (mm/dd/yyyy)"></li>
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
            <label for="checkbox1" class="checkbox"><span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Castro/Upper Market
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Chinatown
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Civic Center
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Embarcadero/Financial District
            </label>
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Fisherman's Wharf
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Haight-Ashbury
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Golden Gate Park/Sunset
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Bayview/Candlestick Point
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Japantown/Fillmore
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Marina/Presidio
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Mission District
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Nob Hill
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            North Beach
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            SOMA/Yerba Buena
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            Union Square
            </label>            
          </li>
          <li class="menu-pad">
            <label for="checkbox1" class="checkbox">
            <span class="icons"><span class="first-icon fui-checkbox-unchecked"></span><span class="second-icon fui-checkbox-checked"></span></span><input type="checkbox" data-toggle="checkbox" id="checkbox1" value="">
            City Wide
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
              <div class="slide" style="background-image:url(editorial_images/<cfoutput>#currentEditorial.story1BannerPic#</cfoutput>);">
                  
                  <div class="fade-overlay">
                    <div class="pad">
                      <h1 class="title"><a href="#link-to-feature"><cfoutput>#currentEditorial.Teaser1Headline#</cfoutput></a></h1>
                      <h5 class="author"><cfoutput>#currentEditorial.Story1Credit#</cfoutput></h5>
                    </div>
                  </div>
                  
              </div><!-- /slide -->
              <div class="slide" style="background-image:url(editorial_images/<cfoutput>#currentEditorial.story2BannerPic#</cfoutput>);">
                  
                  <div class="fade-overlay">
                    <div class="pad">
                      <h1 class="title"><a href="#link-to-feature"><cfoutput>#currentEditorial.Teaser2Headline#</cfoutput></a></h1>
                      <h5 class="author"><cfoutput>#currentEditorial.Story2Credit#</cfoutput></h5>
                    </div>
                  </div>
                  
              </div><!-- /slide -->
              <div class="slide" style="background-image:url(editorial_images/<cfoutput>#currentEditorial.story3BannerPic#</cfoutput>);">
                
                  <div class="fade-overlay">
                    <div class="pad">
                      <h1 class="title"><a href="#link-to-feature"><cfoutput>#currentEditorial.Teaser3Headline#</cfoutput></a></h1>
                      <h5 class="author"><cfoutput>#currentEditorial.Story3Credit#</cfoutput></h5>
                    </div>
                  </div>
                  
              </div><!-- /slide -->              
              <div class="cycle-pager"></div>
            </div><!-- /slideshow -->
              
            <div class="highlights">
              <div class="handle"></div>
              <div class="inside">
                <div class="categories">
                  
                   <h5>Calendar Highlights</h5>
                  <select>
                    <option value="all">All Categories</option>
                    <option value="children">Children</option>
                    <option value="dance">Dance</option>
                    <option value="festivals">Festivals</option>
                    <option value="film">Film/Video</option>
                    <option value="galleries">Galleries</option>
                    <option value="literary">Literary Arts</option>
                    <option value="more">More For Less</option>
                    <option value="music">Music</option>
                    <option value="museums">Museums</option>
                    <option value="public">Public Arts</option>
                    <option value="theater">Theater</option>
                  </select>
                  <ul class="hide cat-list">
                    <li class="first all"><a href="#">All cat list</a></li>
                    <li class="children"><a href="#">Children</a></li>
                    <li class="dance"><a href="#">Dance</a></li>
                    <li class="festivals"><a href="#">Festivals</a></li>
                    <li class="film"><a href="#">Film/Video</a></li>
                    <li class="galleries"><a href="#">Galleries</a></li>
                    <li class="literary"><a href="#">Literary Arts</a></li>
                    <li class="more"><a href="#">More For Less</a></li>
                    <li class="music"><a href="#">Music</a></li>
                    <li class="museums"><a href="#">Museums</a></li>
                    <li class="public"><a href="#">Public Arts</a></li>
                    <li class="last theater"><a href="#">Theater</a></li>  
                  </ul>
                  <div class="hide sponsored">
                    <h6>Sponsored by</h6>
                    <img src="images/boa.svg" alt="Bank of America" width="101" height="41" />    
                  </div>
                </div>
                
                <div class="browse">
                  <div class="load-wrap">
                    <div class="hide browse-top hide">
                      <div class="split cat-title"><h5>Music<a class="rss" href="#rss">RSS</a></h5></div>
                      <div class="split curator"><h5><div class="underline">Curator</div> Jesse Hamlin</h5></div>
                      <div class="split see-more"><h5><a class="more" href="#more">See All Music Events</a></h5></div>
                    </div>
                    <ul class="pods grid-view"><!--- insert template here    </ul>--->
                      <li class="pod">
                        <a href="#" class="link">
                            <div class="detail image"><img src="temp/pod-250.png" class="pod-img" alt="image title"/></div>                                
                            <div class="pad">
                              <h4 class="title">Keith Moon: The Real Me</h4>
                              <div class="detail type">Theater</div>
                              <div class="detail description">The subversive Dada/Surrealist artist with an aptitude for controversy is the focus of an exhibition of seven unconventional works. Defying categorization and blurring the boundaries of book, objet d'art and sculpture are pieces like "Boite," a leather valise with tiny replicas and photos inside.</div>  
                            </div>
                        </a>
                      </li>
                      <li class="pod">
                        <a href="#" class="link">
                            <div class="detail image"><img src="temp/pod-250.png" class="pod-img" alt="image title"/></div>                                
                            <div class="pad">
                              <h4 class="title">Britten Celebration</h4>
                              <div class="detail time">June 4th</div>
                              <div class="detail description">The Spirited young British clarinetist Brenden Guy brings together some of Britten's lesser known works - including a reconstructed version of the Clarinet Concerto, the West Coast premiere of which Guy will give with Alasdaire Neale conducting - to celebrate the British master's centennial.</div>  
                            </div>
                        </a>
                      </li>
                      <li class="pod">
                        <a href="#" class="link">
                            <div class="pad">
                              <h4 class="title">Harmonica Summitt</h4>
                              <div class="detail time">June 18th</div>
                              <div class="detail description">The French harmonica ace Frederic Yonnet plays his bracing mix of jazz, funk and hip-hop and what should be a cooking double bill with his Swiss counterpart, Gregoire Maret, a member of the Pat Metheny Group.</div>  
                            </div>
                        </a>
                      </li>
                      <li class="pod">
                        <a href="#" class="link">
                            <div class="detail image"><img src="temp/pod-250.png" class="pod-img" alt="image title"/></div>                                
                            <div class="pad">
                              <h4 class="title">Tosca</h4>
                              <div class="detail time">Opening in 6 days</div>
                              <div class="detail description">By Giacomo Puccini. Libretto by Luigi Illica and Giuseppe Giacosa. San Francisco Opera Production. Italian maestro Nicola Luisotti conducts Tosca, Puccini's masterful melodrama in which a great singer, a rebellious painter and a corrupt police chief engage in a deadly test of wills.</div>  
                            </div>
                        </a>
                      </li>
                      <li class="pod">
                        <a href="#" class="link">
                            <div class="pad">
                              <h4 class="title">Mark Morris</h4>
                              <div class="detail time">June 12th & 13</div>
                              <div class="detail description">As part of the Ojai North! music and dance festival he's directing, the inimitable choreographer premieres his "Rite of Spring," on a bill with his "Mosaic and United," performed by Mark Morris Dance Group to American string quartet music played by</div>  
                            </div>
                        </a>
                      </li>
                      <li class="pod">
                        <a href="#" class="link">
                            <div class="detail image"><img src="temp/pod-250.png" class="pod-img" alt="image title"/></div>                                
                            <div class="pad">
                              <h4 class="title">Ahmad Jamal</h4>
                              <div class="detail time">June 12th & 13th</div>
                              <div class="detail description">The subtle jazz piano master, who taught Miles Davis things about space and silence, kicks it up with a New Orleans-spiced quartet featuring two Crescent City swingers, drummer Herlin Riley and bassist Reginald Veal, and the Puerto Rican-born percussionist Manolo Badrena.</div>  
                            </div>
                        </a>
                      </li>
                      <li class="pod">
                        <a href="#" class="link">
                            <div class="pad">
                              <h4 class="title">Tales of Hoffman</h4>
                              <div class="detail time">June 5 &rarr; 27</div>
                              <div class="detail description">Tenor Matthew Polenzani plays the love-struck poet in this new production of Offenbach's melody-laden opera fantastique masterpeice, with Hye Jung Lee as Olympia, the automaton he falls for.</div>  
                            </div>
                        </a>
                      </li>
                      <li class="pod">
                        <a href="#" class="link">
                            <div class="detail image"><img src="temp/pod-250.png" class="pod-img" alt="image title"/></div>                                
                            <div class="pad">
                              <h4 class="title">San Francisco Symphony</h4>
                              <div class="detail time">June 6 &rarr;  9</div>
                              <div class="detail description">Symphony concertmaster Alexander Barantschik and principal violist Jonathan Vinocur dig into Britten's Double Concerto, written by violist-composer at 18, with Kirill Karabits conducting the orchestra. Sibelius' Symphony No. 2 and Honegger's Pacific 231 round out the bill.</div>  
                            </div>
                        </a>
                      </li>              
                    </ul><!-- /pods -->
                    <a href="#" class="read-more">See All Events</a>
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

  <script src="js/bootstrap.min.js"></script>
  <script src="js/bootstrap-select.js"></script>
  <script src="js/bootstrap-switch.js"></script>
  <script src="js/flatui-checkbox.js"></script>
  <script src="js/flatui-radio.js"></script>
  <script src="js/jquery.tagsinput.js"></script>
  <script src="js/jquery.placeholder.js"></script>
  <script src="js/jquery.stacktable.js"></script>
  <script src="js/video.js"></script>
  <!---
  <script src="js/jquery.serializecfjson-0.2.js"></script>
  --->
  <script src="js/jquery.serializecfjson-0.2.min.js"></script>
  

  <script src="js/fixedfixed.min.js"></script>
  <script src="js/overthrow.js"></script>
  <script src="js/modernizr-latest.js"></script>
  <script src="js/response.min.js"></script>

  <script src="js/nicescroll/jquery.nicescroll.min.js"></script> 
  <script src="js/waypoints.min.js"></script>  
  <script src="js/masonry.min.js"></script>
  <script src="js/jquery.cycle2.min.js"></script>
  <script src="js/jquery.cycle2.swipe.min.js"></script>
  <script src="js/cycle2-ios6fix.js"></script>
  <script src="js/jquery.touchswipe.min.js"></script>
  <script src="js/imagesloaded.min.js"></script>

  <script src="js/custom.js"></script>
  
</body>
</html>
