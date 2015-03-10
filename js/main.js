// JavaScript Document
$(function  () {
	// 1. Create a variable with the data
  var shoesData = {allShoes:[{name:"Nike", price:199.00, color:"black", size:10 }, {name:"Loafers", price:59.00, color:"blue", size:9 }, {name:"Wing Tip", price:259.00, color:"brown", size:11 }]};
   // 2. Get the HTML from the template in the script tag from the html file
    var theTemplateScript = $("#shoe-template").html(); 
	//var testTemplateScript = $("#sfartsTest-template").html();
   // 3. Compile the template
    var theTemplate = Handlebars.compile (theTemplateScript); 
	 //var theTestTemplate = Handlebars.compile (testTemplateScript); 
	//4. Add the data to the compiled template and then append the result to the target
	Handlebars.registerPartial("description", $("#shoe-description").html());
	console.log(shoesData);
    $(".shoesNav").append (theTemplate(shoesData)); 
//We pass the shoesData object to the compiled handleBars function
// The function will insert all the values from the objects in their respective places in the HTML and returned HTML as a string. Then we use jQuery to append the resulting HTML string into the page

//get my data
getNames();
});

var getNames = function(){
	 //alert('in getNames newCFC');
	$.ajax({
        url: './data/new_V4.cfc',
        data: {
            method: 'getPodSubjects2',
            returnFormat: 'json'
        },
        method:'GET',
        dataType:"json",
        success: function(d,r,o){
			//console.log('r = ' + r +' o = ' + o);
            jData = $.serializeCFJSON({data:d});
			console.log(jData);
			var testTemplateScript = $("#sfartsTest-template").html();
			var theTestTemplate = Handlebars.compile (testTemplateScript); 
			$(".SFartsData").append(theTestTemplate(jData));
        }
    });
}