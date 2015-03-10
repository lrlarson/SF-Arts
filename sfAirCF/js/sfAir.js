
var currentRequest;
var geocoder;
  var map;
  function initialize(){
    geocoder =new google.maps.Geocoder();
    var latlng =new google.maps.LatLng(-34.397,150.644);
    var mapOptions ={
      zoom:17,
      center: latlng
    };
    map =new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  }


function codeAddress(address){
    //var address = document.getElementById("address").value;
    geocoder.geocode({'address': address},function(results, status){
        if(status == google.maps.GeocoderStatus.OK){
            map.setCenter(results[0].geometry.location);
            var marker =new google.maps.Marker({
                map: map,
                position: results[0].geometry.location

            });

            var latlonObject = {
                lat: results[0].geometry.location.lat(),
                lon: results[0].geometry.location.lng()
            };

            var latlonTemplateResults = $('#latlonTemplate').html();
            compiledTempate = Handlebars.compile(latlonTemplateResults);
            $('#latLonContainer').empty();
            $('#latLonContainer').append(compiledTempate(latlonObject));
        }else{
            alert("Geocode was not successful for the following reason: "+ status);
        }
    });
}

function updateVenue(){

    var venueID = ($('#tiVENUE_ID').val());
    var venueName = ($('#tiVENUE_NAME').val());
    var venueAddress = ($('#tiVENUE_ADDRESS').val());
    var venueCity = ($('#tiVENUE_CITY').val());
    var venueZip = ($('#tiVENUE_ZIP').val());
    var venueNeighborhood;
    var newNeighborhood;
    if (!(($('#selectbasic').val()))){
        venueNeighborhood = 17;
    }else{
     venueNeighborhood = ($('#selectbasic').val());
    }
    if (!(($('#selectbasicNew').val()))){
        newNeighborhood = 17;
    }else{
        newNeighborhood = ($('#selectbasicNew').val());
    }
    var venueWeb = ($('#tiVENUE_WEB').val());
    $.ajax({
            url: './data/sfAIR_HTML.cfc',
            data: {
                method: 'updateVenueDataTravel',
                ID:venueID,
                Venue_Name:venueName,
                Venue_Address:venueAddress,
                Venue_City:venueCity,
                Venue_Zip:venueZip,
                Venue_Neighborhood:venueNeighborhood,
                Venue_Web:venueWeb,
                newNeighborhood:newNeighborhood,
                returnFormat: 'json'
            },
            method: 'GET',
            dataType: "json",
            async: false,
            success: function (d, r, o) {
                //alert('success');
                getActiveVenues(currentRequest);
                $('#formTemplate').hide();
            }
        }
    );


}




 function punchItIn(){
   
   var venueID = ($('#tiVENUE_ID').val());
   var lat = ($('#lat').val());
   var lon = ($('#long').val());
   var lat_lon = lat + ',' + lon;
   //alert(lat_lon);
   $.ajax({
        url: './data/sfAIR_HTML.cfc',
        data: {
            method: 'punchInLat_Lon',
            lat_lon:lat_lon,
            lat:lat,
            lon:lon,
            ID:venueID,
            returnFormat: 'json'
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
           //alert('success');
            getActiveVenues('geo');    
                 }
            }
         );
 }

   
 function getActiveVenues(requestScope){
 currentRequest = requestScope;
 if(requestScope == 'all'){
 currentMethod = 'getActiveVenueAddressesSF';
 }else if (requestScope == 'nb'){
 currentMethod = 'getActiveVenueAddressesSFWithNoDATA';
 } else if (requestScope == 'geo'){
 currentMethod = 'getActiveVenueAddressesSFWithNoLAT_LON';
 } else if (requestScope == 'travel'){
     currentMethod = 'getActiveVenueAddressesTRAVELWithNoDATA';
 }

 $.ajax({
        url: './data/sfAIR_HTML.cfc',
        data: {
            method: currentMethod,
            returnFormat: 'json'
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);
           // alert(workReturn);
            var numberOfRecords = {
                number: workReturn.data.length
            };
                
              
            var venueTemplateResults = $('#venueTemplate').html();
            compiledTempate = Handlebars.compile(venueTemplateResults);
            $('#venueResults').empty();
            $('#venueResults').append(compiledTempate(workReturn));


            
            /*

            var dispWorksTemplateScript = $("#works-grid-template").html();
            workTemplate = Handlebars.compile(dispWorksTemplateScript);
            $(".worksList").empty();
            $('.worksList').append(workTemplate(workReturn));
            */
        }
    });

}


function getVenueDetails(venueID){
$.ajax({
        url: './data/sfAIR_HTML.cfc',
        data: {
            method: 'getAddressDetailsForVenue',
            ID:venueID,
            returnFormat: 'json'
        },
        method: 'GET',
        dataType: "json",
        async: true,
        success: function (d, r, o) {
            workReturn = $.serializeCFJSON({
                data: d
            });
            console.log(workReturn);
           //alert(workReturn);
            var numberOfRecords = {
                number: workReturn.data.length
            };
                
           
            var venueDetailTemplate = $('#venueDetailTemplate').html();
            compiledTempate = Handlebars.compile(venueDetailTemplate);
            $('#formTemplate').empty();
            $('#formTemplate').append(compiledTempate(workReturn));


            $('#selectbasic').val(workReturn.data.VENUE_NEIGHBORHOOD);
            //alert(workReturn.data.VENUE_NEIGHBORHOOD);
            $('#selectbasicNew').val(workReturn.data.NEIGHBORHOODNEW);
            //alert(workReturn.data.VENUE_NEIGHBORHOOD);
            
            var address = workReturn.data.VENUE_ADDRESS +', '+  workReturn.data.VENUE_CITY + ' CA' + workReturn.data.VENUE_ZIP;
           codeAddress(address);
            $('#formTemplate').show();
            /*
            var dispWorksTemplateScript = $("#works-grid-template").html();
            workTemplate = Handlebars.compile(dispWorksTemplateScript);
            $(".worksList").empty();
            $('.worksList').append(workTemplate(workReturn));
         */
        }
    });

}