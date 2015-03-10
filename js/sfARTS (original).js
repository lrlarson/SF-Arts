// JavaScript Document


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
			//setWidth();
				//});
     // initialize
   //  $container.imagesLoaded(function(){
	  
     // initialize
     
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
//console.log("dispPod = "+ dispPod + ' ' + discipline);    
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

