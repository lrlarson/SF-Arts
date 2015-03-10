// JavaScript Document

function searchBoxTabOut(){
	// check for firstRun value -- if yes, then stringSearchFunction(), otherwise searchFunction() 
 	if(stringSearchRan){
		 handleSearchChange();
	}else{
		stringSearchRan = true;
		handleStringSearch($('.search-box').val());
		$('#dateSelect').val('all');
	}
}
function handleSearchChange(){
	$('.overlay').show();  
	var dateView = $('#dateSelect').val();
	var dispView = $('#dispSelect').val();
	var priceView = $('#priceSelect').val();
	var neighborhoodView = $('#neighborhoodSelect').val();
	var searchString = $(".search-box").val();
	searchFunction(dateView,dispView,priceView,neighborhoodView,searchString);
	
}
var handleStringSearch  = function(searchStringValue){
	$('.overlay').show();  
	
	$.ajax({
        url: './data/new_V4.cfc',
        data: {
            method: 'getEventsBySimpleStringSearch',
				searchString:searchStringValue,
            	returnFormat: 'json'
        },
        method:'GET',
        dataType:"json",
        success: function(d,r,o){
			//console.log('r = ' + r +' o = ' + o);
			$('.overlay').hide(200); 
            jData = $.serializeCFJSON({data:d});
			console.log(jData);
			var dispListTemplateScript = $("#events-list-template").html();
			listTemplate = Handlebars.compile (dispListTemplateScript); 
			$(".pods.list-view").empty();
			$(".pods.list-view").append(listTemplate(jData));
			
			var dispGridTemplateScript = $("#events-grid-template").html();
			gridTemplate = Handlebars.compile (dispGridTemplateScript); 
			$(".pods.grid-view").empty();
			$(".pods.grid-view").append(gridTemplate(jData));
			$('.pods.grid-view').masonry('destroy');   
			//$(window).trigger('resize');
			 
			
			var numberOfRecords = {number:jData.data.length};
			var resultsNumberTemplateScript = $('#events-number-template').html();
			numberTemplate = Handlebars.compile( resultsNumberTemplateScript);
			$('.results').empty();
			 $('.results').append(numberTemplate(numberOfRecords)); 
			$(window).trigger('resize');
		}
    });
	
	

}



var searchFunction = function(dateView,dispView,priceView,neighborhoodView,searchStringValue){

	$.ajax({
        url: './data/new_V4.cfc',
        data: {
            method: 'searchFunction',
				dateWindow:dateView,
				disp:dispView,
				price:priceView,
				neighborhood:neighborhoodView,
				searchString:searchStringValue,
            	returnFormat: 'json'
        },
        method:'GET',
        dataType:"json",
        success: function(d,r,o){
			//console.log('r = ' + r +' o = ' + o);
			$('.overlay').hide(200); 
            jData = $.serializeCFJSON({data:d});
			console.log(jData);
			var dispListTemplateScript = $("#events-list-template").html();
			listTemplate = Handlebars.compile (dispListTemplateScript); 
			$(".pods.list-view").empty();
			$(".pods.list-view").append(listTemplate(jData));
			
			var dispGridTemplateScript = $("#events-grid-template").html();
			gridTemplate = Handlebars.compile (dispGridTemplateScript); 
			$(".pods.grid-view").empty();
			$(".pods.grid-view").append(gridTemplate(jData));
			$('.pods.grid-view').masonry('destroy');   
			//$(window).trigger('resize');
			 
			
			var numberOfRecords = {number:jData.data.length};
			var resultsNumberTemplateScript = $('#events-number-template').html();
			numberTemplate = Handlebars.compile( resultsNumberTemplateScript);
			$('.results').empty();
			 $('.results').append(numberTemplate(numberOfRecords)); 
			$(window).trigger('resize');
		}
    });
	
	
}
var getPods = function(disp){
	
	$.ajax({
        url: './data/new_V4.cfc',
        data: {
            method: 'getEditorialContent',
			Disp_Num:disp,
            returnFormat: 'json'
        },
        method:'GET',
        dataType:"json",
        success: function(d,r,o){
			//console.log('r = ' + r +' o = ' + o);
            jData = $.serializeCFJSON({data:d});
			console.log(jData);
			var podsTemplateScript = $("#pods-template").html();
			podsTemplate = Handlebars.compile (podsTemplateScript); 
			$(".pods.grid-view").empty();
			$(".pods.grid-view").append(podsTemplate(jData));
			 $('.pods.grid-view').masonry('destroy');   
			
			$(window).trigger('resize');
       }
    });
}

var getEventsByDate = function(firstDate,secondDate){
	
	$.ajax({
        url: './data/new_V4.cfc',
        data: {
            method: 'getMasterEventsByDate',
			date1:firstDate,
			date2:secondDate,
            returnFormat: 'json'
        },
        method:'GET',
        dataType:"json",
        success: function(d,r,o){
			//console.log('r = ' + r +' o = ' + o);
            jData = $.serializeCFJSON({data:d});
			console.log(jData);
			var dispListTemplateScript = $("#events-list-template").html();
			listTemplate = Handlebars.compile (dispListTemplateScript); 
			$(".pods.list-view").empty();
			$(".pods.list-view").append(listTemplate(jData));
			
			var dispGridTemplateScript = $("#events-grid-template").html();
			gridTemplate = Handlebars.compile (dispGridTemplateScript); 
			$(".pods.grid-view").empty();
			$(".pods.grid-view").append(gridTemplate(jData));
			$('.pods.grid-view').masonry('destroy');   
			$(window).trigger('resize');
			
     
       }
    });
}




var getDispInfo = function(disp){
	
	$.ajax({
        url: './data/new_V4.cfc',
        data: {
            method: 'getDispInfo',
			Disp_Num:disp,
            returnFormat: 'json'
        },
        method:'GET',
        dataType:"json",
        success: function(d,r,o){
			if (d != null){
            jDataDisp = $.serializeCFJSON({data:d});
			console.log(jDataDisp);
			var dispTemplateScript = $("#disp-template").html();
			dispTemplate = Handlebars.compile (dispTemplateScript); 
			$(".hide.browse-top.hide").empty();
			$(".hide.browse-top.hide").append(dispTemplate(jDataDisp));
			}else{
			$(".hide.browse-top.hide").empty();
			
			}
			
			//setWidth();
			
				//});
     // initialize
   //  $container.imagesLoaded(function(){
	  
     // initialize
     
       }
    });
}

function getDispCombo(selection){
	var sel = selection.options[selection.selectedIndex].value;
	dispPod = sel;
	getPods(sel);
	getDispInfo(sel);
	//window.location.hash = '#grid-view';
	window.scrollTo(0,1);
}

function selectSearchView(selection){
	var sel = selection.options[selection.selectedIndex].value;
	if (sel == 'list'){
		  $('.pods.list-view').show();
			$('.pods.grid-view').hide();
		}else{
			$(window).trigger('resize');
		$('.pods.list-view').hide();
			$('.pods.grid-view').show();
		}
}

Handlebars.registerHelper ("dateDispSwitch", function (discipline,date_string) 
{    
   
if (dispPod == 99 || dispPod == 98){
	return discipline;
} else{
	return date_string;
}

	});
	
Handlebars.registerHelper ("showDisp", function (discipline,date_string) 
{    
//console.log("dispPod = "+ dispPod + ' ' + discipline);    
if (dispPod == 99 || dispPod == 98){
	return date_string;
} 

	});


Handlebars.registerHelper ("showSearchImage", function (imagename) 
{    
 
if (imagename != null){
	return imagename;      
		}else{
			return 'images/blankImage.gif';
		}
	});

// return a parameter value from the current URL
function getParam ( sname )
{
  var params = location.search.substr(location.search.indexOf("?")+1);
  var sval = "";
  params = params.split("&");
    // split param and value into individual pieces
    for (var i=0; i<params.length; i++)
       {
         temp = params[i].split("=");
         if ( [temp[0]] == sname ) { sval = temp[1]; }
       }
  return sval;
}
