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
  
<body class="one-spot search with-header">
<div id="loader" class="with-alpha"><div class="vjs-loading-spinner"></div></div>
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
    <li><a href="search.cfm?date=today"  onClick="clearState();" class="">Today's Events</a></li>
    <li><a href="search.cfm?date=weekend"  onClick="clearState();" class="">This Weekend</a></li>
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
            <a href="search.cfm?disp=9" onClick="clearState();" >Children</a>
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
    <div class="search-wrap with-filter show-result-count">
      <div class="button-wrap"><div class="btn btn-blend blue action-toggle-filter">Filter</div></div>  
      <div class="search-box-squeeze">
        <span class="clear-search sficon-remove" onClick="handleClearSearch()"></span>
        <input class="search-box" type="text" placeholder="Search by Keyword or Use Filters" value=""   id="searchBox"/>
        <div class="results"><!--- insert results here ---></div>
       <script id="events-number-template" type="x-handlebars-template">
	   	{{number}} results
	   </script>
      </div>
    </div>
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
          <div class="spothead search-filter-wrap">
            <div class="search-filter view-mode active">
              <div class="button-wrap"></div>
              <h5 class="title">View Mode</h5>  
                <select onChange="selectSearchView(this)">
                  <option value="grid" selected="selected" >Grid View</option>
                  <option value="list" >List View</option>
                </select> 
            </div><!-- /search-filter -->
            <div class="search-filter view-type active">
              <div class="button-wrap"><a class="sficon-remove" onClick="handleRemoveClick('view-type');"></a></div>
              <h5 class="title">Event Type</h5>  
                <select name="dispSelect" id="dispSelect" onChange="handleSearchChange(this.id)" >
                  <option value="-1">All</option>
                  <option value="9">Children</option>
                  <option value="2">Dance</option>
                  <option value="5">Festivals</option>
                  <option value="6">Film/Video</option>
                  <option value="8">Galleries</option>
                  <option value="4">Literary Arts</option>
                  <option value="3">Music</option>
                  <option value="7">Museums</option>
                  <option value="13">Public Arts</option>
                  <option value="1">Theater</option>
                </select> 
            </div><!-- /search-filter -->
            <div class="search-filter view-time active">
              <div class="button-wrap"><a class="sficon-remove" onClick="handleRemoveClick('view-time');"></a></div>
              <h5 class="title">When</h5>  
                <select name="dateSelect" id="dateSelect" onChange="dateHasBeenSelected=true;handleSearchChange(this.id)">
                  <option value="today">Today</option>
                  <option value="tomorrow">Tomorrow</option>
                  <option value="weekend">This Weekend</option>
                  <option value="all">All</option>
                  <!--
                  <option value="current">Current</option>
                  <option value="upcoming">Upcoming</option>
                  <option value="new">New</option>
                  <option value="closing">Closing</option>
                  -->
                </select> 
            </div><!-- /search-filter -->
            <div class="search-filter view-price">
              <div class="button-wrap"><a class="sficon-remove" onClick="handleRemoveClick('view-price');"></a></div>
              <h5 class="title">Price</h5>  
                <select name="priceSelect" id="priceSelect" onChange="handleSearchChange(this.id)">
                 <option value="-1">All</option>
                  <option value="1">Free</option>
                  <option value="2">Child Discount</option>
                  <option value="3">Student Discount</option>
                  <option value="4">Senior Discount</option>
                </select> 
            </div><!-- /search-filter -->
            <div class="search-filter view-location">
              <div class="button-wrap"><a class="sficon-remove" onClick="handleRemoveClick('view-location');"></a></div>
              <h5 class="title">Neighborhood</h5>  
                <select name="neighborhoodSelect" id="neighborhoodSelect" onChange="handleSearchChange(this.id)">
                  <option value="-1">Any</option>
                  <option value="1">Castro/Noe Valley/Upper Market</option>
                  <option value="2">Chinatown</option>
                  <option value="3">Civic Center/Hayes Valley</option>
                  <option value="4">Embarcadero/Financial District</option>
                  <option value="5">Fisherman's Wharf</option>
                  <option value="6">Haight-Ashbury</option>
                  <!--
                  <option value="7">Golden Gate Park/Sunset</option>
                  -->
                  <option value="8">Bayview</option>
                  <!--
                  <option value="9">Japantown/Fillmore</option>
                  <option value="10">Marina/Presidio</option>
                  -->
                  <option value="11">Mission District/Potrero</option>
                  <option value="12">Nob Hill</option>
                  <option value="13">North Beach</option>
                  <option value="14">SOMA/Yerba Buena</option>
                  <option value="15">Union Square</option>
                  <option value="18">Fillmore</option>
                  <option value="19">Japantown</option>
                  <option value="20">Marina/Pacific Heights</option>
                  <option value="21">Sunset</option>
                   <option value="22">Central Market</option>
                   <option value="23">Richmond/Presidio</option>
                   <option value="24">Treasure Island</option>
                   <option value="25">Napa Valley</option>
                   <option value="26">East Bay</option>
                   <option value="27">Sacramento</option>
                   <option value="28">Monterey</option>
                   <option value="29">Sausalito/Marin</option>
                   <option value="30">SFO Area</option>
                   <option value="31">Silicon Valley</option>
                   <option value="32">Wine Country</option>
                   <option value="33">Central Valley</option>
                  
                </select> 
            </div><!-- /search-filter -->            
          </div><!-- /spothead -->
          <div class="inner">
            <ul class="pods list-view">
              
              <!--- insert template here --->          
            </ul><!-- /pods -->
             <script id="events-list-template" type="x-handlebars-template">
			 {{#each data}}
			 <li class="pod">
                <a href="event.cfm?event_num={{event_num}}" class="link">
                  <div class="split">
                    <h4 class="title">{{event_name}}</h4>
					<div class="detail_org">{{org_name}}</div>
                    <div class="detail type">{{discipline}}</div>
                  </div>
                  <div class="split">
                    <div class="detail description">{{editEventDescription event_description}}</div>  
                  </div>
                  <div class="split">
                    <div class="detail time">{{date_string}} <br> {{time_string}}</div>  
                  </div>
                  <div class="split">
                    <div class="detail tickets">{{ticket_string}}</div>  
					{{#if imagename.length}}
					
                    <div class="detail image"><img src={{imagename}} class="pod-img" alt="image title"/></div>
                 </div>
				  {{else}}
				   	 <div class="detail image"></div>
					 </div>
				  {{/if}}               
                </a>
              </li>
			 
			 
			 
			 {{/each}}
			 </script>
             
            <ul class="pods grid-view"> <!--- insert template here ---></ul>
              <script id="events-grid-template" type="x-handlebars-template">
             {{#each data}} 
			  <li class="pod">
                <a href="event.cfm?event_num={{event_num}}" class="link">
                  <div class="detail image"><img src=	{{showSearchImage imagenamelarge}} <!---style= {{showImageCSS imagename event_num}} --->class="pod-img" id={{event_num}}  alt=""/></div>                           
                    <div class="pad">
                      <h4 class="title">{{event_name}}</h4>
					   <div class="detail_org">{{org_name}}</div>
                      <div class="detail type">{{date_string}}</div>
                      <div class="detail description">{{editEventDescription event_description}}</div>  
                    </div>
                </a>
              </li>
			  {{/each}}
               </script>
            <!-- /pods -->
             
          </div><!-- /.inner -->
          <span id="loadMoreSpan"><!--- insert template here ---></span>
          <script id="moreEvents-template" type="x-handlebars-template">
          <a href="#" class="read-more">Page {{curPage}} of {{pages}} | Load Next</a>
		  </script>
        </div><!-- /#middle-center -->
     <!---
      <div class="overlay"></div>
	  --->
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
	 	
	 
	 $('.read-more').live('click',function(){
		pageNumber ++;
		if (pageNumber < numberOfPages){
		//alert('the next page is' + pageNumber);
		advancePage(pageNumber);
		}else{
			//alert('last page');
			$('.read-more').hide();
			advancePage(pageNumber);
		}
	 });
	 
	 
	  $("#bounds").keyup(function(event){
    		if(event.keyCode == 13){	
        	searchBoxTabOut();
			//$(".search-box").blur();
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
	  
	  stringSearchRan = false;
	  
	  $('.pods.grid-view').show();
    $('.pods.list-view').hide();
	//$( "#dispSelect" ).val([ "5", "6" ]);
	
	var disp = '';
	var location = '';
	var dateView = '';
	var sString = '';
	var price = '';
	pageNumber = 1;
	dateHasBeenSelected = false;
	
	disp = getParam("disp");
	dateView = getParam("date");
	location = getParam("location");
	//dateView = getParam("dateView");
   	sString = getParam("sString");
	sString = decodeURI(sString);
	date1 = getParam("date1");
	date2 = getParam("date2");
	date1 = unescape(date1);
	date2 = unescape(date2);
	
	//Check for existing search parameters -- we are not coming from a fresh search
	var searchState = [];
		if (localStorage.getItem('state')){
		retrievedObject = localStorage.getItem('state');
		searchState = JSON.parse(retrievedObject);
		//alert(searchState);
		}
		
		if (searchState.length){
			var stateRecords = searchState.length;
			//alert('There is a search state' + searchState.length);
			$.each(searchState,function(index, obj) {
					
					//console.log('in the each  ' +obj.date + ' ' + index);
					if (index == stateRecords - 1){
						//console.log('index found');	
						//check here for time record
						var thisMoment = Math.round(new Date().getTime() / 1000);
						thatMoment = obj.minute;
						if (thisMoment - thatMoment < 120){
								price = obj.price;
								disp = obj.disp;
								location = obj.neighborhood;
								dateView = obj.date;
								sString = obj.string;
						}
					}
					
			});
		}


	if (!disp){
		disp = -1;
		$('#dispSelect').val(disp);
		makeSearchInterfaceInActive('dispSelect');
	}else{
		$('#dispSelect').val(disp);
		if (disp == -1){
			makeSearchInterfaceInActive('dispSelect');
			}else{
				makeSearchInterfaceActive('dispSelect');
			}
		}
	
	
	//alert(dateView);
	if (!dateView){
		dateView = 'all';
		$('#dateSelect').val(dateView);
		makeSearchInterfaceInActive('dateSelect');
	}else{
		$('#dateSelect').val(dateView);
		if (dateView == 'all'){
		makeSearchInterfaceInActive('dateSelect');
		}else{
			makeSearchInterfaceActive('dateSelect');
		}
	}
	
	if (!price){
		price = -1;
		$('#priceSelect').val(price);
		makeSearchInterfaceInActive('priceSelect');
	}else{
		$('#priceSelect').val(price);	
		if (price == -1){
			makeSearchInterfaceInActive('priceSelect');
			}else{
				makeSearchInterfaceActive('priceSelect');
			}
		}
	
	
	if (!location){
		location = -1;
		$('#neighborhoodSelect').val(location);
		makeSearchInterfaceInActive('neighborhoodSelect');
	}else{
		$('#neighborhoodSelect').val(location);
		if (location == -1) {
		makeSearchInterfaceInActive('neighborhoodSelect');	
		} else{
			makeSearchInterfaceActive('neighborhoodSelect');	
		}
	}
	
	if (!sString){
		sString = '';	
	}else{
			$('.search-box').val(sString);
			$('#dateSelect').val('all');			
	}
	
	if (!date1){
		makeSearchInterfaceInActive('dateSelect');
		date1  = '';
		date2  = '';	
	}else{
		makeSearchInterfaceActive('dateSelect');
		//insert date 
		dateView = '99';
		
		if (!date2){
		date2 = date1;
		//alert (date1+' ' + date2);
		}	
		$('#dateSelect').append($('<option>', { 
        value: 99,
        text : date1 + '->' + date2 
    }));
	$('#dateSelect').val(99);	
	}
	
	if(date1){
		
	searchFunctionPaged(dateView,disp,price,location,sString,pageNumber,1,1,date1,date2);
	}else{
	searchFunctionPaged(dateView,disp,price,location,sString,pageNumber,1,1);
	}

	
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
