<cfcomponent>
	
     <cffunction name="getAllVenueAddressesSF" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procAirGetAllSFAddresses"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
  
   <cffunction name="getActiveVenueAddressesSF" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procEditActiveVenueLocations]"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
  
  <cffunction name="getActiveVenueAddressesSFWithNoDATA" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procAirEditActiveVenueLocationsWithNODATA]"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
  
  
   
   <cffunction name="getExpiringStories" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procDaysLeft]"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
  
  <cffunction name="getTIXFuzzyLookupBySimilarity" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procTIXFuzzyLookUpTargetsBySimularity]"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
   
    <cffunction name="getAddressDetailsForVenue" access="remote" returntype="struct">
    	<cfargument name="ID" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procAirGetVenueDetails]"> 
            	<cfprocparam cfsqltype="cf_sql_integer" dbvarname="@id" value="#ID#">
            	<cfprocresult name="rsDetail">
            </cfstoredproc>
            <cfset mystruct=StructNew()>
            <cfset mystruct.venue_name=#rsDetail.venue_name#>
             <cfset mystruct.Venue_Web=#rsDetail.Venue_Web#>
             <cfset mystruct.Venue_Phone=#rsDetail.Venue_Phone#>
             <cfset mystruct.Venue_address=#rsDetail.Venue_address#>
             <cfset mystruct.Venue_City=#rsDetail.Venue_City#>
             <cfset mystruct.Venue_Zip=#rsDetail.Venue_Zip#>
             <cfset mystruct.Venue_Neighborhood=#rsDetail.Venue_Neighborhood#>
             
            
    <cfreturn mystruct>
  </cffunction> 
    
  <cffunction name="updateVenueData" access="remote" >
    	<cfargument name="ID" type="numeric" required="yes">
        <cfargument name="Venue_Name" type="string" required="yes">
        <cfargument name="Venue_Address" type="string" required="yes">
        <cfargument name="Venue_City" type="string" required="yes">
        <cfargument name="Venue_Zip" type="numeric" required="yes">
        <cfargument name="Venue_Neighborhood" type="numeric" required="yes">
         <cfargument name="Venue_Web" type="string" required="yes">
         
            <cfstoredproc datasource="sfarts_AWS"  procedure="[procAirUpdateVenueRecord]"> 
            	<cfprocparam cfsqltype="cf_sql_integer" dbvarname="@id" value="#ID#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Name" value="#Venue_Name#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Address" value="#Venue_Address#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_City" value="#Venue_City#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Venue_Zip" value="#Venue_Zip#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Venue_Neighborhood" value="#Venue_Neighborhood#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Web" value="#Venue_Web#">
            </cfstoredproc>
</cffunction>
   
 <cffunction name="getFaults" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procGetFaults]"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>   
  
   <cffunction name="addFaults" access="remote" returntype="any">
   	<cfargument name="badTrait" type="string" required="yes">
    <cfargument name="type" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procAddFaults]"> 
            	<cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@badTrait" value="#badTrait#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@type" value="#type#">
            
            </cfstoredproc>
 
  </cffunction>  
  
   <cffunction name="checkPassword" access="remote" returntype="any">
   	<cfargument name="password" type="string" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procEventEditPassword]"> 
            	<cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@password" value="#password#">
          	   `<cfprocresult name="recordset1">
            </cfstoredproc>
            <cfif recordset1.RecordCount GT 0>
            <cfmail from="lrlarson@mac.com" to="lrlarson@mac.com" subject="NighlifeEditorLogon">
            There has been a NightLife logon.
            </cfmail>
            </cfif>
		<cfreturn recordset1>
  </cffunction>  
   
 <cffunction name="getUnmatchedTBA" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procAirGetTBAUnmatchedIDs"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
  
  <cffunction name="getUnmatchedSFarts" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procAirGetSFArtsUnmatchedIDs"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>    
   
   <cffunction name="addtbaID" access="remote" returntype="any">
   	<cfargument name="tbaID" type="numeric" required="yes">
    <cfargument name="Org_Num" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procAirAddtbaID]"> 
            	<cfprocparam cfsqltype="cf_sql_integer" dbvarname="@tbaID" value="#tbaID#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Num" value="#Org_Num#">
            
            </cfstoredproc>
 
  </cffunction>  
  
  
  <cffunction name="tixGetEventsForThisComp_ID" access="remote" returntype="any">
   	<cfargument name="comp_id" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procTIXGetCurrentEventsForThisOrg]"> 
            	<cfprocparam cfsqltype="cf_sql_integer" dbvarname="@comp_id" value="#comp_id#">
                <cfprocresult name="recordset1">
            </cfstoredproc>
          <cfreturn recordset1>   
  </cffunction>  
 
  <cffunction name="syncSFARTS_TBA_Table" access="remote" returntype="any">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procAirCopyTBA_IDs_to_TBA_tbl"> 
            </cfstoredproc>
  </cffunction>    


 <cffunction name="searchBySubsString" access="remote" returntype="query">
    <cfargument name="subString" type="string" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procAirGetOrgNamesFromSearchString"> 
            	<cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@searchString" value="#subString#">
           <cfprocresult name="recordset1">
      
            </cfstoredproc>
 <cfreturn recordset1>
  </cffunction>      
  
  
  <cffunction name="getEditorialContent" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procEditorialGetItemsAll"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
  
  <cffunction name="getPodSubjects" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procAirGetPodSubjects"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
  
   
   <cffunction name="getEditorialForDisp" access="remote" returntype="query">
   <cfargument name="disp" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procEditorialGetItemsForDisp"> 
            <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@disp" value="#disp#">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
   
   <cffunction name="getSpecificStory" access="remote" returntype="any">
   	<cfargument name="id" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procEditorialGetSpecificItem"> 
            	<cfprocparam cfsqltype="cf_sql_integer" dbvarname="@id" value="#id#">
            <cfprocresult name = "rsDetail">
            </cfstoredproc>
 	 <cfset mystruct=StructNew()>
            <cfset mystruct.discipline=#rsDetail.discipline#>
             <cfset mystruct.event=#rsDetail.event#>
             <cfset mystruct.photoStory=#rsDetail.photoStory#>
             <cfset mystruct.storyText=#rsDetail.storyText#>
             <cfset mystruct.imageName=#rsDetail.imageName#>
             <cfset mystruct.dispString=#rsDetail.dispString#>
             <cfset mystruct.dateString=#rsDetail.dateString#>
              <cfset mystruct.title=#rsDetail.title#>
             <cfset mystruct.id=#rsDetail.id#>
             <cfset mystruct.live=#rsDetail.live#>
             <cfset mystruct.compostDate=#rsDetail.compostDate#>
             <cfset mystruct.postDate=#rsDetail.postDate#>
 			 <cfset mystruct.displayOrder=#rsDetail.displayOrder#>
    <cfreturn mystruct>
     </cffunction> 
     
     
     
     <cffunction name="procUpdateStory" access="remote" >
         <cfargument name="COMPOSTDATE" type ="date" required = "yes">
        <cfargument name="DATESTRING" type ="string" required = "yes">
        <cfargument name="DISCIPLINE" type ="numeric" required = "yes">
        <cfargument name="IMAGENAME" type ="string" required = "yes">
        <cfargument name="LIVE" type ="boolean" required = "yes">
        <cfargument name="PHOTOSTORY" type ="boolean" required = "yes">
        <cfargument name="POSTDATE" type ="date" required = "yes">
        <cfargument name="STORYTEXT" type ="string" required = "yes">
        <cfargument name="TITLE" type ="string" required = "yes">
          <cfargument name="ID" type ="numeric" required = "yes">
           <cfargument name="event" type ="numeric" required = "yes">
           <cfargument name="displayOrder" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="procUpdateStory"> 
    	<cfprocparam cfsqltype="cf_sql_date" dbvarname="@COMPOSTDATE" value="#COMPOSTDATE#">
        <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@DATESTRING" value="#DATESTRING#">
        <cfprocparam cfsqltype="cf_sql_numeric" dbvarname="@discipline" value="#discipline#">
        <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@IMAGENAME" value="#IMAGENAME#">
        <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@LIVE" value="#LIVE#">
        <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@PHOTOSTORY" value="#PHOTOSTORY#">
        <cfprocparam cfsqltype="cf_sql_date" dbvarname="@POSTDATE" value="#POSTDATE#">
        <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@STORYTEXT" value="#STORYTEXT#">
        <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@TITLE" value="#TITLE#">
         <cfprocparam cfsqltype="cf_sql_numeric" dbvarname="@id" value="#ID#">
            <cfprocparam cfsqltype="cf_sql_numeric" dbvarname="@event" value="#event#">
             <cfprocparam cfsqltype="cf_sql_numeric" dbvarname="@displayOrder" value="#displayOrder#">
       </cfstoredproc>  
     </cffunction>
     
      <cffunction name="procCreateStory" access="remote" >
         <cfargument name="COMPOSTDATE" type ="date" required = "yes">
        <cfargument name="DATESTRING" type ="string" required = "yes">
        <cfargument name="DISCIPLINE" type ="numeric" required = "yes">
        <cfargument name="IMAGENAME" type ="string" required = "yes">
        <cfargument name="LIVE" type ="boolean" required = "yes">
        <cfargument name="PHOTOSTORY" type ="boolean" required = "yes">
        <cfargument name="POSTDATE" type ="date" required = "yes">
        <cfargument name="STORYTEXT" type ="string" required = "yes">
        <cfargument name="TITLE" type ="string" required = "yes">
        <cfargument name="FILLER" type ="boolean" required = "yes">
         <cfargument name="EVENT" type ="numeric" required = "yes">
         <cfargument name="displayOrder" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="procCreateStory"> 
    	<cfprocparam cfsqltype="cf_sql_date" dbvarname="@COMPOSTDATE" value="#COMPOSTDATE#">
        <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@DATESTRING" value="#DATESTRING#">
        <cfprocparam cfsqltype="cf_sql_numeric" dbvarname="@discipline" value="#discipline#">
        <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@IMAGENAME" value="#IMAGENAME#">
        <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@LIVE" value="#LIVE#">
        <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@PHOTOSTORY" value="#PHOTOSTORY#">
        <cfprocparam cfsqltype="cf_sql_date" dbvarname="@POSTDATE" value="#POSTDATE#">
        <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@STORYTEXT" value="#STORYTEXT#">
        <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@TITLE" value="#TITLE#">
        <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@FILLER" value="#FILLER#">
        <cfprocparam cfsqltype="cf_sql_numeric" dbvarname="@EVENT" value="#EVENT#">
        <cfprocparam cfsqltype="cf_sql_numeric" dbvarname="@displayOrder" value="#displayOrder#">
       </cfstoredproc>  
     </cffunction>
     
 <cffunction name="getNumberOfLiveStories" access="remote" returntype="any" output="false">
  <cfargument name="disp" required="yes" type="numeric" >
  <CFSTOREDPROC procedure="dbo.procEditHowManyLiveForThisDisp" datasource="sfarts_AWS">
    <CFPROCPARAM type="IN" dbvarname="@disp" value="#disp#" cfsqltype="cf_sql_integer">
    <cfprocparam type="out" dbvarname="@count" cfsqltype="cf_sql_bigint"  variable="count">
  </CFSTOREDPROC>
 <cfset mystruct=StructNew()>
            <cfset mystruct.count=#count#>
    <cfreturn mystruct>
</cffunction>    
  
  
 <cffunction name="getNumberOfPictStories" access="remote" returntype="any" output="false">
  <CFSTOREDPROC procedure="dbo.[procGetPixStories]" datasource="sfarts_AWS">
<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>  
  
   <cffunction name="getNumberOfLiveStories2" access="remote" returntype="any" output="false">
  <CFSTOREDPROC procedure="dbo.[procGetLiveStories]" datasource="sfarts_AWS">
   
<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
  
  <cffunction name="getAllProducingOrgs" access="remote" returntype="query" output="false">
  <CFSTOREDPROC procedure="dbo.[procAirGetProducingOrgs]" datasource="sfarts_AWS">
<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>  
  
   <cffunction name="getAllVenues" access="remote" returntype="query" output="false">
  <CFSTOREDPROC procedure="dbo.[procAirGetVenues]" datasource="sfarts_AWS">
<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>  
 
 <cffunction name="getEventsForOrg" access="remote" returntype="query">
   <cfargument name="orgID" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procAirGetEventsForOrg"> 
            <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@orgID" value="#orgID#">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
  
  <cffunction name="getEventsForOrgEnt" access="remote" returntype="query">
   <cfargument name="orgID" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procAirEntGetEventsForOrg]"> 
            <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@orgID" value="#orgID#">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
  
  <cffunction name="getEventsForOrgEnt_Stage" access="remote" returntype="query">
   <cfargument name="orgID" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procAirEntGetEventsForOrg_Stage]"> 
            <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@orgID" value="#orgID#">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
  
   <cffunction name="getEventDetails" access="remote" returntype="any">
   	<cfargument name="eventNum" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procAirGetEventDetails"> 
            	<cfprocparam cfsqltype="cf_sql_integer" dbvarname="@eventNum" value="#eventNum#">
            <cfprocresult name = "rsDetail">
            </cfstoredproc>
 	 <cfset mystruct=StructNew()>
            <cfset mystruct.Child_Discount=#rsDetail.Child_Discount#>
			<cfset mystruct.d1=#rsDetail.d1#>
            <cfset mystruct.d10=#rsDetail.d10#>
            <cfset mystruct.d11=#rsDetail.d11#>
            <cfset mystruct.d12=#rsDetail.d12#>
            <cfset mystruct.d13=#rsDetail.d13#>
            <cfset mystruct.d14=#rsDetail.d14#>
            <cfset mystruct.d15=#rsDetail.d15#>
            <cfset mystruct.d16=#rsDetail.d16#>
            <cfset mystruct.d17=#rsDetail.d17#>
            <cfset mystruct.d18=#rsDetail.d18#>
            <cfset mystruct.d19=#rsDetail.d19#>
            <cfset mystruct.d2=#rsDetail.d2#>
            <cfset mystruct.d20=#rsDetail.d20#>
            <cfset mystruct.d21=#rsDetail.d21#>
            <cfset mystruct.d22=#rsDetail.d22#>
            <cfset mystruct.d23=#rsDetail.d23#>
            <cfset mystruct.d24=#rsDetail.d24#>
            <cfset mystruct.d25=#rsDetail.d25#>
            <cfset mystruct.d26=#rsDetail.d26#>
            <cfset mystruct.d27=#rsDetail.d27#>
            <cfset mystruct.d28=#rsDetail.d28#>
            <cfset mystruct.d29=#rsDetail.d29#>
            <cfset mystruct.d3=#rsDetail.d3#>
            <cfset mystruct.d30=#rsDetail.d30#>
            <cfset mystruct.d31=#rsDetail.d31#>
            <cfset mystruct.d4=#rsDetail.d4#>
            <cfset mystruct.d5=#rsDetail.d5#>
            <cfset mystruct.d6=#rsDetail.d6#>
            <cfset mystruct.d7=#rsDetail.d7#>
            <cfset mystruct.d8=#rsDetail.d8#>
            <cfset mystruct.d9=#rsDetail.d9#>
            <cfset mystruct.Date_String=#rsDetail.Date_String#>
            <cfset mystruct.End_Date=#rsDetail.End_Date#>
            <cfset mystruct.Event_Description=#rsDetail.Event_Description#>
            <cfset mystruct.Event_Name=#rsDetail.Event_Name#>
            <cfset mystruct.Event_Num=#rsDetail.Event_Num#>
            <cfset mystruct.Event_Phone=#rsDetail.Event_Phone#>
            <cfset mystruct.Event_Time=#rsDetail.Event_Time#>
            <cfset mystruct.Free_For_All=#rsDetail.Free_For_All#>
            <cfset mystruct.Friday=#rsDetail.Friday#>
            <cfset mystruct.Gallery_Museum_Event=#rsDetail.Gallery_Museum_Event#>
            <cfset mystruct.ID=#rsDetail.ID#>
            <cfset mystruct.ID2=#rsDetail.ID2#>
            <cfset mystruct.Monday=#rsDetail.Monday#>
            <cfset mystruct.Org_Num=#rsDetail.Org_Num#>
            <cfset mystruct.Performing_Arts_Event=#rsDetail.Performing_Arts_Event#>
            <cfset mystruct.Saturday=#rsDetail.Saturday#>
            <cfset mystruct.Senior_Discount=#rsDetail.Senior_Discount#>
            <cfset mystruct.Start_Date=#rsDetail.Start_Date#>
            <cfset mystruct.Student_Discount=#rsDetail.Student_Discount#>
            <cfset mystruct.Sunday=#rsDetail.Sunday#>
            <cfset mystruct.Thursday=#rsDetail.Thursday#>
            <cfset mystruct.Ticket_High=#rsDetail.Ticket_High#>
            <cfset mystruct.Ticket_Low=#rsDetail.Ticket_Low#>
            <cfset mystruct.Ticket_String=#rsDetail.Ticket_String#>
            <cfset mystruct.Time_String=#rsDetail.Time_String#>
            <cfset mystruct.Tuesday=#rsDetail.Tuesday#>
            <cfset mystruct.Venue_Name=#rsDetail.Venue_Name#>
            <cfset mystruct.Wednesday=#rsDetail.Wednesday#>
             <cfset mystruct.VenueID=#rsDetail.VenueID#>
             <cfset mystruct.TicketLink = #rsDetail.ticketLink#>
    <cfreturn mystruct>
     </cffunction> 
     
     
 <cffunction name="getEntEventDetails" access="remote" returntype="any">
   	<cfargument name="eventNum" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procAirGetEntEventDetails]"> 
            	<cfprocparam cfsqltype="cf_sql_integer" dbvarname="@eventNum" value="#eventNum#">
            <cfprocresult name = "rsDetail">
            </cfstoredproc>
 	 <cfset mystruct=StructNew()>
            <cfset mystruct.Child_Discount=#rsDetail.Child_Discount#>
			<cfset mystruct.d1=#rsDetail.d1#>
            <cfset mystruct.d10=#rsDetail.d10#>
            <cfset mystruct.d11=#rsDetail.d11#>
            <cfset mystruct.d12=#rsDetail.d12#>
            <cfset mystruct.d13=#rsDetail.d13#>
            <cfset mystruct.d14=#rsDetail.d14#>
            <cfset mystruct.d15=#rsDetail.d15#>
            <cfset mystruct.d16=#rsDetail.d16#>
            <cfset mystruct.d17=#rsDetail.d17#>
            <cfset mystruct.d18=#rsDetail.d18#>
            <cfset mystruct.d19=#rsDetail.d19#>
            <cfset mystruct.d2=#rsDetail.d2#>
            <cfset mystruct.d20=#rsDetail.d20#>
            <cfset mystruct.d21=#rsDetail.d21#>
            <cfset mystruct.d22=#rsDetail.d22#>
            <cfset mystruct.d23=#rsDetail.d23#>
            <cfset mystruct.d24=#rsDetail.d24#>
            <cfset mystruct.d25=#rsDetail.d25#>
            <cfset mystruct.d26=#rsDetail.d26#>
            <cfset mystruct.d27=#rsDetail.d27#>
            <cfset mystruct.d28=#rsDetail.d28#>
            <cfset mystruct.d29=#rsDetail.d29#>
            <cfset mystruct.d3=#rsDetail.d3#>
            <cfset mystruct.d30=#rsDetail.d30#>
            <cfset mystruct.d31=#rsDetail.d31#>
            <cfset mystruct.d4=#rsDetail.d4#>
            <cfset mystruct.d5=#rsDetail.d5#>
            <cfset mystruct.d6=#rsDetail.d6#>
            <cfset mystruct.d7=#rsDetail.d7#>
            <cfset mystruct.d8=#rsDetail.d8#>
            <cfset mystruct.d9=#rsDetail.d9#>
            <cfset mystruct.Date_String=#rsDetail.Date_String#>
            <cfset mystruct.End_Date=#rsDetail.End_Date#>
            <cfset mystruct.Event_Description=#rsDetail.Event_Description#>
            <cfset mystruct.Event_Name=#rsDetail.Event_Name#>
            <cfset mystruct.Event_Num=#rsDetail.Event_Num#>
            <cfset mystruct.Event_Phone=#rsDetail.Event_Phone#>
            <cfset mystruct.Event_Time=#rsDetail.Event_Time#>
            <cfset mystruct.Free_For_All=#rsDetail.Free_For_All#>
            <cfset mystruct.Friday=#rsDetail.Friday#>
            <cfset mystruct.Gallery_Museum_Event=#rsDetail.Gallery_Museum_Event#>
            <cfset mystruct.ID=#rsDetail.ID#>
            <cfset mystruct.ID2=#rsDetail.ID2#>
            <cfset mystruct.Monday=#rsDetail.Monday#>
            <cfset mystruct.Org_Num=#rsDetail.Org_Num#>
            <cfset mystruct.Performing_Arts_Event=#rsDetail.Performing_Arts_Event#>
            <cfset mystruct.Saturday=#rsDetail.Saturday#>
            <cfset mystruct.Senior_Discount=#rsDetail.Senior_Discount#>
            <cfset mystruct.Start_Date=#rsDetail.Start_Date#>
            <cfset mystruct.Student_Discount=#rsDetail.Student_Discount#>
            <cfset mystruct.Sunday=#rsDetail.Sunday#>
            <cfset mystruct.Thursday=#rsDetail.Thursday#>
            <cfset mystruct.Ticket_High=#rsDetail.Ticket_High#>
            <cfset mystruct.Ticket_Low=#rsDetail.Ticket_Low#>
            <cfset mystruct.Ticket_String=#rsDetail.Ticket_String#>
            <cfset mystruct.Time_String=#rsDetail.Time_String#>
            <cfset mystruct.Tuesday=#rsDetail.Tuesday#>
            <cfset mystruct.Venue_Name=#rsDetail.Venue_Name#>
            <cfset mystruct.Wednesday=#rsDetail.Wednesday#>
             <cfset mystruct.VenueID=#rsDetail.VenueID#>
             <cfset mystruct.TicketLink = #rsDetail.ticketLink#>
    <cfreturn mystruct>
     </cffunction>     
     
     
  <cffunction name="addVenueIDs" access="remote" returntype="any" output="false">
  <CFSTOREDPROC procedure="dbo.[procAirSetVenueIDs]" datasource="sfarts_AWS">
            </cfstoredproc>
  </cffunction>  
  
  
  <cffunction name="getDisciplines" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procAirGetDisps]"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction> 
  
  <cffunction name="updateEventRecord" access="remote" >
         <cfargument name="Child_Discount" type ="boolean" required = "yes">
                <cfargument name="d1" type ="boolean" required = "yes">
                <cfargument name="d10" type ="boolean" required = "yes">
                <cfargument name="d11" type ="boolean" required = "yes">
                <cfargument name="d12" type ="boolean" required = "yes">
                <cfargument name="d13" type ="boolean" required = "yes">
                <cfargument name="d14" type ="boolean" required = "yes">
                <cfargument name="d15" type ="boolean" required = "yes">
                <cfargument name="d16" type ="boolean" required = "yes">
                <cfargument name="d17" type ="boolean" required = "yes">
                <cfargument name="d18" type ="boolean" required = "yes">
                <cfargument name="d19" type ="boolean" required = "yes">
                <cfargument name="d2" type ="boolean" required = "yes">
                <cfargument name="d20" type ="boolean" required = "yes">
                <cfargument name="d21" type ="boolean" required = "yes">
                <cfargument name="d22" type ="boolean" required = "yes">
                <cfargument name="d23" type ="boolean" required = "yes">
                <cfargument name="d24" type ="boolean" required = "yes">
                <cfargument name="d25" type ="boolean" required = "yes">
                <cfargument name="d26" type ="boolean" required = "yes">
                <cfargument name="d27" type ="boolean" required = "yes">
                <cfargument name="d28" type ="boolean" required = "yes">
                <cfargument name="d29" type ="boolean" required = "yes">
                <cfargument name="d3" type ="boolean" required = "yes">
                <cfargument name="d30" type ="boolean" required = "yes">
                <cfargument name="d31" type ="boolean" required = "yes">
                <cfargument name="d4" type ="boolean" required = "yes">
                <cfargument name="d5" type ="boolean" required = "yes">
                <cfargument name="d6" type ="boolean" required = "yes">
                <cfargument name="d7" type ="boolean" required = "yes">
                <cfargument name="d8" type ="boolean" required = "yes">
                <cfargument name="d9" type ="boolean" required = "yes">
                <cfargument name="Date_String" type ="string" required = "yes">
                <cfargument name="End_Date" type ="date" required = "yes">
                <cfargument name="Event_Description" type ="string" required = "yes">
                <cfargument name="Event_Name" type ="string" required = "yes">
                <cfargument name="Event_Num" type ="numeric" required = "yes">
                <cfargument name="Event_Phone" type ="string" required = "yes">
                <cfargument name="Event_Time" type ="date" required = "yes">
                <cfargument name="Free_For_All" type ="boolean" required = "yes">
                <cfargument name="Friday" type ="boolean" required = "yes">
                <cfargument name="Gallery_Museum_Event" type ="boolean" required = "yes">
                <cfargument name="ID" type ="numeric" required = "yes">
                <cfargument name="ID2" type ="numeric" required = "yes">
                <cfargument name="Monday" type ="boolean" required = "yes">
                <cfargument name="Org_Num" type ="numeric" required = "yes">
                <cfargument name="Performing_Arts_Event" type ="boolean" required = "yes">
                <cfargument name="Saturday" type ="boolean" required = "yes">
                <cfargument name="Senior_Discount" type ="boolean" required = "yes">
                <cfargument name="Start_Date" type ="date" required = "yes">
                <cfargument name="Student_Discount" type ="boolean" required = "yes">
                <cfargument name="Sunday" type ="boolean" required = "yes">
                <cfargument name="Thursday" type ="boolean" required = "yes">
                <cfargument name="Ticket_High" type ="numeric" required = "yes">
                <cfargument name="Ticket_Low" type ="numeric" required = "yes">
                <cfargument name="Ticket_String" type ="string" required = "yes">
                <cfargument name="Time_String" type ="string" required = "yes">
                <cfargument name="Tuesday" type ="boolean" required = "yes">
                <cfargument name="Venue_Name" type ="string" required = "yes">
                <cfargument name="venueID" type ="numeric" required = "yes">
                <cfargument name="Wednesday" type ="boolean" required = "yes">
                <cfargument name="Date_Difference" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="procAirUpdateEventData"> 
    			<cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Child_Discount" value="#Child_Discount#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d1" value="#d1#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d10" value="#d10#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d11" value="#d11#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d12" value="#d12#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d13" value="#d13#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d14" value="#d14#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d15" value="#d15#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d16" value="#d16#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d17" value="#d17#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d18" value="#d18#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d19" value="#d19#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d2" value="#d2#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d20" value="#d20#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d21" value="#d21#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d22" value="#d22#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d23" value="#d23#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d24" value="#d24#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d25" value="#d25#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d26" value="#d26#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d27" value="#d27#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d28" value="#d28#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d29" value="#d29#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d3" value="#d3#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d30" value="#d30#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d31" value="#d31#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d4" value="#d4#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d5" value="#d5#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d6" value="#d6#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d7" value="#d7#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d8" value="#d8#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d9" value="#d9#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Date_String" value="#Date_String#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@End_Date" value="#End_Date#">
                <cfprocparam cfsqltype="cf_sql_longvarchar" dbvarname="@Event_Description" value="#Event_Description#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Event_Name" value="#Event_Name#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Event_Num" value="#Event_Num#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Event_Phone" value="#Event_Phone#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@Event_Time" value="#Event_Time#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Free_For_All" value="#Free_For_All#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Friday" value="#Friday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Gallery_Museum_Event" value="#Gallery_Museum_Event#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@ID" value="#ID#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@ID2" value="#ID2#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Monday" value="#Monday#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Num" value="#Org_Num#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Performing_Arts_Event" value="#Performing_Arts_Event#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Saturday" value="#Saturday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Senior_Discount" value="#Senior_Discount#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@Start_Date" value="#Start_Date#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Student_Discount" value="#Student_Discount#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Sunday" value="#Sunday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Thursday" value="#Thursday#">
                <cfprocparam cfsqltype="cf_sql_money" dbvarname="@Ticket_High" value="#Ticket_High#">
                <cfprocparam cfsqltype="cf_sql_money" dbvarname="@Ticket_Low" value="#Ticket_Low#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Ticket_String" value="#Ticket_String#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Time_String" value="#Time_String#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Tuesday" value="#Tuesday#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Name" value="#Venue_Name#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@venueID" value="#venueID#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Wednesday" value="#Wednesday#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Date_Difference" value="#Date_Difference#">
       </cfstoredproc>  
     </cffunction>
     
      <cffunction name="updateEntEventRecord" access="remote" >
         <cfargument name="Child_Discount" type ="boolean" required = "yes">
                <cfargument name="d1" type ="boolean" required = "yes">
                <cfargument name="d10" type ="boolean" required = "yes">
                <cfargument name="d11" type ="boolean" required = "yes">
                <cfargument name="d12" type ="boolean" required = "yes">
                <cfargument name="d13" type ="boolean" required = "yes">
                <cfargument name="d14" type ="boolean" required = "yes">
                <cfargument name="d15" type ="boolean" required = "yes">
                <cfargument name="d16" type ="boolean" required = "yes">
                <cfargument name="d17" type ="boolean" required = "yes">
                <cfargument name="d18" type ="boolean" required = "yes">
                <cfargument name="d19" type ="boolean" required = "yes">
                <cfargument name="d2" type ="boolean" required = "yes">
                <cfargument name="d20" type ="boolean" required = "yes">
                <cfargument name="d21" type ="boolean" required = "yes">
                <cfargument name="d22" type ="boolean" required = "yes">
                <cfargument name="d23" type ="boolean" required = "yes">
                <cfargument name="d24" type ="boolean" required = "yes">
                <cfargument name="d25" type ="boolean" required = "yes">
                <cfargument name="d26" type ="boolean" required = "yes">
                <cfargument name="d27" type ="boolean" required = "yes">
                <cfargument name="d28" type ="boolean" required = "yes">
                <cfargument name="d29" type ="boolean" required = "yes">
                <cfargument name="d3" type ="boolean" required = "yes">
                <cfargument name="d30" type ="boolean" required = "yes">
                <cfargument name="d31" type ="boolean" required = "yes">
                <cfargument name="d4" type ="boolean" required = "yes">
                <cfargument name="d5" type ="boolean" required = "yes">
                <cfargument name="d6" type ="boolean" required = "yes">
                <cfargument name="d7" type ="boolean" required = "yes">
                <cfargument name="d8" type ="boolean" required = "yes">
                <cfargument name="d9" type ="boolean" required = "yes">
                <cfargument name="Date_String" type ="string" required = "yes">
                <cfargument name="End_Date" type ="date" required = "yes">
                <cfargument name="Event_Description" type ="string" required = "yes">
                <cfargument name="Event_Name" type ="string" required = "yes">
                <cfargument name="Event_Num" type ="numeric" required = "yes">
                <cfargument name="Event_Phone" type ="string" required = "yes">
                <cfargument name="Event_Time" type ="date" required = "yes">
                <cfargument name="Free_For_All" type ="boolean" required = "yes">
                <cfargument name="Friday" type ="boolean" required = "yes">
                <cfargument name="Gallery_Museum_Event" type ="boolean" required = "yes">
                <cfargument name="ID" type ="numeric" required = "yes">
                <cfargument name="ID2" type ="numeric" required = "yes">
                <cfargument name="Monday" type ="boolean" required = "yes">
                <cfargument name="Org_Num" type ="numeric" required = "yes">
                <cfargument name="Performing_Arts_Event" type ="boolean" required = "yes">
                <cfargument name="Saturday" type ="boolean" required = "yes">
                <cfargument name="Senior_Discount" type ="boolean" required = "yes">
                <cfargument name="Start_Date" type ="date" required = "yes">
                <cfargument name="Student_Discount" type ="boolean" required = "yes">
                <cfargument name="Sunday" type ="boolean" required = "yes">
                <cfargument name="Thursday" type ="boolean" required = "yes">
                <cfargument name="Ticket_High" type ="numeric" required = "yes">
                <cfargument name="Ticket_Low" type ="numeric" required = "yes">
                <cfargument name="Ticket_String" type ="string" required = "yes">
                <cfargument name="Time_String" type ="string" required = "yes">
                <cfargument name="Tuesday" type ="boolean" required = "yes">
                <cfargument name="Venue_Name" type ="string" required = "yes">
                <cfargument name="venueID" type ="numeric" required = "yes">
                <cfargument name="Wednesday" type ="boolean" required = "yes">
                <cfargument name="Date_Difference" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="procAirUpdateEntEventData"> 
    			<cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Child_Discount" value="#Child_Discount#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d1" value="#d1#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d10" value="#d10#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d11" value="#d11#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d12" value="#d12#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d13" value="#d13#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d14" value="#d14#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d15" value="#d15#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d16" value="#d16#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d17" value="#d17#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d18" value="#d18#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d19" value="#d19#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d2" value="#d2#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d20" value="#d20#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d21" value="#d21#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d22" value="#d22#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d23" value="#d23#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d24" value="#d24#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d25" value="#d25#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d26" value="#d26#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d27" value="#d27#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d28" value="#d28#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d29" value="#d29#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d3" value="#d3#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d30" value="#d30#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d31" value="#d31#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d4" value="#d4#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d5" value="#d5#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d6" value="#d6#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d7" value="#d7#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d8" value="#d8#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d9" value="#d9#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Date_String" value="#Date_String#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@End_Date" value="#End_Date#">
                <cfprocparam cfsqltype="cf_sql_longvarchar" dbvarname="@Event_Description" value="#Event_Description#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Event_Name" value="#Event_Name#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Event_Num" value="#Event_Num#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Event_Phone" value="#Event_Phone#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@Event_Time" value="#Event_Time#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Free_For_All" value="#Free_For_All#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Friday" value="#Friday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Gallery_Museum_Event" value="#Gallery_Museum_Event#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@ID" value="#ID#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@ID2" value="#ID2#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Monday" value="#Monday#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Num" value="#Org_Num#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Performing_Arts_Event" value="#Performing_Arts_Event#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Saturday" value="#Saturday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Senior_Discount" value="#Senior_Discount#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@Start_Date" value="#Start_Date#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Student_Discount" value="#Student_Discount#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Sunday" value="#Sunday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Thursday" value="#Thursday#">
                <cfprocparam cfsqltype="cf_sql_money" dbvarname="@Ticket_High" value="#Ticket_High#">
                <cfprocparam cfsqltype="cf_sql_money" dbvarname="@Ticket_Low" value="#Ticket_Low#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Ticket_String" value="#Ticket_String#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Time_String" value="#Time_String#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Tuesday" value="#Tuesday#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Name" value="#Venue_Name#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@venueID" value="#venueID#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Wednesday" value="#Wednesday#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Date_Difference" value="#Date_Difference#">
       </cfstoredproc>  
     </cffunction>
     
     
      <cffunction name="createEventRecord" access="remote" >
         <cfargument name="Child_Discount" type ="boolean" required = "yes">
                <cfargument name="d1" type ="boolean" required = "yes">
                <cfargument name="d10" type ="boolean" required = "yes">
                <cfargument name="d11" type ="boolean" required = "yes">
                <cfargument name="d12" type ="boolean" required = "yes">
                <cfargument name="d13" type ="boolean" required = "yes">
                <cfargument name="d14" type ="boolean" required = "yes">
                <cfargument name="d15" type ="boolean" required = "yes">
                <cfargument name="d16" type ="boolean" required = "yes">
                <cfargument name="d17" type ="boolean" required = "yes">
                <cfargument name="d18" type ="boolean" required = "yes">
                <cfargument name="d19" type ="boolean" required = "yes">
                <cfargument name="d2" type ="boolean" required = "yes">
                <cfargument name="d20" type ="boolean" required = "yes">
                <cfargument name="d21" type ="boolean" required = "yes">
                <cfargument name="d22" type ="boolean" required = "yes">
                <cfargument name="d23" type ="boolean" required = "yes">
                <cfargument name="d24" type ="boolean" required = "yes">
                <cfargument name="d25" type ="boolean" required = "yes">
                <cfargument name="d26" type ="boolean" required = "yes">
                <cfargument name="d27" type ="boolean" required = "yes">
                <cfargument name="d28" type ="boolean" required = "yes">
                <cfargument name="d29" type ="boolean" required = "yes">
                <cfargument name="d3" type ="boolean" required = "yes">
                <cfargument name="d30" type ="boolean" required = "yes">
                <cfargument name="d31" type ="boolean" required = "yes">
                <cfargument name="d4" type ="boolean" required = "yes">
                <cfargument name="d5" type ="boolean" required = "yes">
                <cfargument name="d6" type ="boolean" required = "yes">
                <cfargument name="d7" type ="boolean" required = "yes">
                <cfargument name="d8" type ="boolean" required = "yes">
                <cfargument name="d9" type ="boolean" required = "yes">
                <cfargument name="Date_String" type ="string" required = "yes">
                <cfargument name="End_Date" type ="date" required = "yes">
                <cfargument name="Event_Description" type ="string" required = "yes">
                <cfargument name="Event_Name" type ="string" required = "yes">
                <cfargument name="Event_Phone" type ="string" required = "yes">
                <cfargument name="Event_Time" type ="date" required = "yes">
                <cfargument name="Free_For_All" type ="boolean" required = "yes">
                <cfargument name="Friday" type ="boolean" required = "yes">
                <cfargument name="Gallery_Museum_Event" type ="boolean" required = "yes">
                <cfargument name="ID" type ="numeric" required = "yes">
                <cfargument name="ID2" type ="numeric" required = "yes">
                <cfargument name="Monday" type ="boolean" required = "yes">
                <cfargument name="Org_Num" type ="numeric" required = "yes">
                <cfargument name="Performing_Arts_Event" type ="boolean" required = "yes">
                <cfargument name="Saturday" type ="boolean" required = "yes">
                <cfargument name="Senior_Discount" type ="boolean" required = "yes">
                <cfargument name="Start_Date" type ="date" required = "yes">
                <cfargument name="Student_Discount" type ="boolean" required = "yes">
                <cfargument name="Sunday" type ="boolean" required = "yes">
                <cfargument name="Thursday" type ="boolean" required = "yes">
                <cfargument name="Ticket_High" type ="numeric" required = "yes">
                <cfargument name="Ticket_Low" type ="numeric" required = "yes">
                <cfargument name="Ticket_String" type ="string" required = "yes">
                <cfargument name="Time_String" type ="string" required = "yes">
                <cfargument name="Tuesday" type ="boolean" required = "yes">
                <cfargument name="Venue_Name" type ="string" required = "yes">
                <cfargument name="venueID" type ="numeric" required = "yes">
                <cfargument name="Wednesday" type ="boolean" required = "yes">
                <cfargument name="dateDiff" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="procAirCreateNewEvent"> 
    			<cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Child_Discount" value="#Child_Discount#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d1" value="#d1#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d10" value="#d10#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d11" value="#d11#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d12" value="#d12#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d13" value="#d13#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d14" value="#d14#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d15" value="#d15#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d16" value="#d16#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d17" value="#d17#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d18" value="#d18#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d19" value="#d19#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d2" value="#d2#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d20" value="#d20#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d21" value="#d21#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d22" value="#d22#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d23" value="#d23#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d24" value="#d24#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d25" value="#d25#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d26" value="#d26#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d27" value="#d27#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d28" value="#d28#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d29" value="#d29#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d3" value="#d3#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d30" value="#d30#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d31" value="#d31#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d4" value="#d4#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d5" value="#d5#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d6" value="#d6#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d7" value="#d7#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d8" value="#d8#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d9" value="#d9#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Date_String" value="#Date_String#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@End_Date" value="#End_Date#">
                <cfprocparam cfsqltype="cf_sql_longvarchar" dbvarname="@Event_Description" value="#Event_Description#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Event_Name" value="#Event_Name#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Event_Phone" value="#Event_Phone#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@Event_Time" value="#Event_Time#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Free_For_All" value="#Free_For_All#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Friday" value="#Friday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Gallery_Museum_Event" value="#Gallery_Museum_Event#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@ID" value="#ID#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@ID2" value="#ID2#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Monday" value="#Monday#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Num" value="#Org_Num#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Performing_Arts_Event" value="#Performing_Arts_Event#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Saturday" value="#Saturday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Senior_Discount" value="#Senior_Discount#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@Start_Date" value="#Start_Date#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Student_Discount" value="#Student_Discount#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Sunday" value="#Sunday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Thursday" value="#Thursday#">
                <cfprocparam cfsqltype="cf_sql_decimal" dbvarname="@Ticket_High" value="#Ticket_High#">
                <cfprocparam cfsqltype="cf_sql_decimal" dbvarname="@Ticket_Low" value="#Ticket_Low#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Ticket_String" value="#Ticket_String#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Time_String" value="#Time_String#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Tuesday" value="#Tuesday#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Name" value="#Venue_Name#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@venueID" value="#venueID#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Wednesday" value="#Wednesday#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@dateDiff" value="#dateDiff#">
       			<cfprocparam type="out" dbvarname="@Event_Num" cfsqltype="cf_sql_integer"  variable="Event_Num">
  </CFSTOREDPROC>
 <cfset mystruct=StructNew()>
            <cfset mystruct.Event_Num=#Event_Num#>
    <cfreturn mystruct>
     </cffunction>
 
 <cffunction name="createEventRecordEnt" access="remote" >
         <cfargument name="Child_Discount" type ="boolean" required = "yes">
                <cfargument name="d1" type ="boolean" required = "yes">
                <cfargument name="d10" type ="boolean" required = "yes">
                <cfargument name="d11" type ="boolean" required = "yes">
                <cfargument name="d12" type ="boolean" required = "yes">
                <cfargument name="d13" type ="boolean" required = "yes">
                <cfargument name="d14" type ="boolean" required = "yes">
                <cfargument name="d15" type ="boolean" required = "yes">
                <cfargument name="d16" type ="boolean" required = "yes">
                <cfargument name="d17" type ="boolean" required = "yes">
                <cfargument name="d18" type ="boolean" required = "yes">
                <cfargument name="d19" type ="boolean" required = "yes">
                <cfargument name="d2" type ="boolean" required = "yes">
                <cfargument name="d20" type ="boolean" required = "yes">
                <cfargument name="d21" type ="boolean" required = "yes">
                <cfargument name="d22" type ="boolean" required = "yes">
                <cfargument name="d23" type ="boolean" required = "yes">
                <cfargument name="d24" type ="boolean" required = "yes">
                <cfargument name="d25" type ="boolean" required = "yes">
                <cfargument name="d26" type ="boolean" required = "yes">
                <cfargument name="d27" type ="boolean" required = "yes">
                <cfargument name="d28" type ="boolean" required = "yes">
                <cfargument name="d29" type ="boolean" required = "yes">
                <cfargument name="d3" type ="boolean" required = "yes">
                <cfargument name="d30" type ="boolean" required = "yes">
                <cfargument name="d31" type ="boolean" required = "yes">
                <cfargument name="d4" type ="boolean" required = "yes">
                <cfargument name="d5" type ="boolean" required = "yes">
                <cfargument name="d6" type ="boolean" required = "yes">
                <cfargument name="d7" type ="boolean" required = "yes">
                <cfargument name="d8" type ="boolean" required = "yes">
                <cfargument name="d9" type ="boolean" required = "yes">
                <cfargument name="Date_String" type ="string" required = "yes">
                <cfargument name="End_Date" type ="date" required = "yes">
                <cfargument name="Event_Description" type ="string" required = "yes">
                <cfargument name="Event_Name" type ="string" required = "yes">
                <cfargument name="Event_Phone" type ="string" required = "yes">
                <cfargument name="Event_Time" type ="date" required = "yes">
                <cfargument name="Free_For_All" type ="boolean" required = "yes">
                <cfargument name="Friday" type ="boolean" required = "yes">
                <cfargument name="Gallery_Museum_Event" type ="boolean" required = "yes">
                <cfargument name="ID" type ="numeric" required = "yes">
                <cfargument name="ID2" type ="numeric" required = "yes">
                <cfargument name="Monday" type ="boolean" required = "yes">
                <cfargument name="Org_Num" type ="numeric" required = "yes">
                <cfargument name="Performing_Arts_Event" type ="boolean" required = "yes">
                <cfargument name="Saturday" type ="boolean" required = "yes">
                <cfargument name="Senior_Discount" type ="boolean" required = "yes">
                <cfargument name="Start_Date" type ="date" required = "yes">
                <cfargument name="Student_Discount" type ="boolean" required = "yes">
                <cfargument name="Sunday" type ="boolean" required = "yes">
                <cfargument name="Thursday" type ="boolean" required = "yes">
                <cfargument name="Ticket_High" type ="numeric" required = "yes">
                <cfargument name="Ticket_Low" type ="numeric" required = "yes">
                <cfargument name="Ticket_String" type ="string" required = "yes">
                <cfargument name="Time_String" type ="string" required = "yes">
                <cfargument name="Tuesday" type ="boolean" required = "yes">
                <cfargument name="Venue_Name" type ="string" required = "yes">
                <cfargument name="venueID" type ="numeric" required = "yes">
                <cfargument name="Wednesday" type ="boolean" required = "yes">
                <cfargument name="dateDiff" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="[procAirEntCreateNewEvent]"> 
    			<cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Child_Discount" value="#Child_Discount#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d1" value="#d1#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d10" value="#d10#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d11" value="#d11#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d12" value="#d12#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d13" value="#d13#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d14" value="#d14#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d15" value="#d15#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d16" value="#d16#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d17" value="#d17#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d18" value="#d18#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d19" value="#d19#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d2" value="#d2#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d20" value="#d20#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d21" value="#d21#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d22" value="#d22#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d23" value="#d23#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d24" value="#d24#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d25" value="#d25#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d26" value="#d26#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d27" value="#d27#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d28" value="#d28#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d29" value="#d29#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d3" value="#d3#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d30" value="#d30#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d31" value="#d31#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d4" value="#d4#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d5" value="#d5#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d6" value="#d6#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d7" value="#d7#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d8" value="#d8#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@d9" value="#d9#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Date_String" value="#Date_String#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@End_Date" value="#End_Date#">
                <cfprocparam cfsqltype="cf_sql_longvarchar" dbvarname="@Event_Description" value="#Event_Description#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Event_Name" value="#Event_Name#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Event_Phone" value="#Event_Phone#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@Event_Time" value="#Event_Time#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Free_For_All" value="#Free_For_All#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Friday" value="#Friday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Gallery_Museum_Event" value="#Gallery_Museum_Event#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@ID" value="#ID#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@ID2" value="#ID2#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Monday" value="#Monday#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Num" value="#Org_Num#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Performing_Arts_Event" value="#Performing_Arts_Event#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Saturday" value="#Saturday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Senior_Discount" value="#Senior_Discount#">
                <cfprocparam cfsqltype="cf_sql_date" dbvarname="@Start_Date" value="#Start_Date#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Student_Discount" value="#Student_Discount#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Sunday" value="#Sunday#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Thursday" value="#Thursday#">
                <cfprocparam cfsqltype="cf_sql_decimal" dbvarname="@Ticket_High" value="#Ticket_High#">
                <cfprocparam cfsqltype="cf_sql_decimal" dbvarname="@Ticket_Low" value="#Ticket_Low#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Ticket_String" value="#Ticket_String#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Time_String" value="#Time_String#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Tuesday" value="#Tuesday#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Name" value="#Venue_Name#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@venueID" value="#venueID#">
                <cfprocparam cfsqltype="cf_sql_bit" dbvarname="@Wednesday" value="#Wednesday#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@dateDiff" value="#dateDiff#">
       			<cfprocparam type="out" dbvarname="@Event_Num" cfsqltype="cf_sql_integer"  variable="Event_Num">
  </CFSTOREDPROC>
 <cfset mystruct=StructNew()>
            <cfset mystruct.Event_Num=#Event_Num#>
    <cfreturn mystruct>
     </cffunction>
 
 
 
     
 <cffunction name="createVenue" access="remote" >
        	 <cfargument name="Venue_address" type ="string" required = "yes">
            <cfargument name="Venue_City" type ="string" required = "yes">
            <cfargument name="Venue_Name" type ="string" required = "yes">
            <cfargument name="Venue_Neighborhood" type ="numeric" required = "yes">
            <cfargument name="Venue_Phone" type ="string" required = "yes">
            <cfargument name="Venue_Web" type ="string" required = "yes">
            <cfargument name="Venue_Zip" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="procAirCreateNewVenue"> 
    			<cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_address" value="#Venue_address#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_City" value="#Venue_City#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Name" value="#Venue_Name#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Venue_Neighborhood" value="#Venue_Neighborhood#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Phone" value="#Venue_Phone#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Web" value="#Venue_Web#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Venue_Zip" value="#Venue_Zip#">
       			<cfprocparam type="out" dbvarname="@ID" cfsqltype="cf_sql_integer"  variable="ID">
  </CFSTOREDPROC>
 <cfset mystruct=StructNew()>
            <cfset mystruct.ID=#ID#>
    <cfreturn mystruct>
     </cffunction>    
  
  
  <cffunction name="createVenueEnt" access="remote" >
        	 <cfargument name="Venue_address" type ="string" required = "yes">
            <cfargument name="Venue_City" type ="string" required = "yes">
            <cfargument name="Venue_Name" type ="string" required = "yes">
            <cfargument name="Venue_Neighborhood" type ="numeric" required = "yes">
            <cfargument name="Venue_Phone" type ="string" required = "yes">
            <cfargument name="Venue_Web" type ="string" required = "yes">
            <cfargument name="Venue_Zip" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="[procAirCreateNewVenueEnt]"> 
    			<cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_address" value="#Venue_address#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_City" value="#Venue_City#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Name" value="#Venue_Name#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Venue_Neighborhood" value="#Venue_Neighborhood#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Phone" value="#Venue_Phone#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Venue_Web" value="#Venue_Web#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Venue_Zip" value="#Venue_Zip#">
       			<cfprocparam type="out" dbvarname="@ID" cfsqltype="cf_sql_integer"  variable="ID">
  </CFSTOREDPROC>
 <cfset mystruct=StructNew()>
            <cfset mystruct.ID=#ID#>
    <cfreturn mystruct>
     </cffunction>    
  
  
  <cffunction name="getOrgDetails" access="remote" returntype="struct">
    	<cfargument name="Org_Num" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="[procAirGetOrgData]"> 
            	<cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Num" value="#Org_Num#">
            	<cfprocresult name="rsDetail">
            </cfstoredproc>
            <cfset mystruct=StructNew()>
           <cfset mystruct.Org_Address=#rsDetail.Org_Address#>
			<cfset mystruct.Org_City=#rsDetail.Org_City#>
            <cfset mystruct.Org_Name=#rsDetail.Org_Name#>
            <cfset mystruct.Org_Num=#rsDetail.Org_Num#>
            <cfset mystruct.Org_Phone=#rsDetail.Org_Phone#>
            <cfset mystruct.Org_TBA_ID_REAL=#rsDetail.Org_TBA_ID_REAL#>
            <cfset mystruct.Org_Web=#rsDetail.Org_Web#>
            <cfset mystruct.Org_Zip=#rsDetail.Org_Zip#>        
    <cfreturn mystruct>
  </cffunction> 
     
     
     
  <cffunction name="updateOrgRecord" access="remote" >
        <cfargument name="Org_Address" type ="string" required = "yes">
        <cfargument name="Org_City" type ="string" required = "yes">
        <cfargument name="Org_Name" type ="string" required = "yes">
        <cfargument name="Org_Num" type ="numeric" required = "yes">
        <cfargument name="Org_Phone" type ="string" required = "yes">
        <cfargument name="Org_TBA_ID_REAL" type ="numeric" required = "yes">
        <cfargument name="Org_Web" type ="string" required = "yes">
        <cfargument name="Org_Zip" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="procAirUpdateOrgData"> 
    			<cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Address" value="#Org_Address#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_City" value="#Org_City#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Name" value="#Org_Name#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Num" value="#Org_Num#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Phone" value="#Org_Phone#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_TBA_ID_REAL" value="#Org_TBA_ID_REAL#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Web" value="#Org_Web#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Zip" value="#Org_Zip#">
       </cfstoredproc>  
     </cffunction>    
     
    <cffunction name="createOrg" access="remote" >
		<cfargument name="Org_Address" type ="string" required = "yes">
        <cfargument name="Org_City" type ="string" required = "yes">
        <cfargument name="Org_Name" type ="string" required = "yes">
        <cfargument name="Org_Phone" type ="string" required = "yes">
        <cfargument name="Org_TBA_ID_REAL" type ="numeric" required = "yes">
        <cfargument name="Org_Web" type ="string" required = "yes">
        <cfargument name="Org_Zip" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="procAirCreateOrgData"> 
    			<cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Address" value="#Org_Address#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_City" value="#Org_City#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Name" value="#Org_Name#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Phone" value="#Org_Phone#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_TBA_ID_REAL" value="#Org_TBA_ID_REAL#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Web" value="#Org_Web#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Zip" value="#Org_Zip#">
       			<cfprocparam type="out" dbvarname="@Org_Num" cfsqltype="cf_sql_integer"  variable="Org_Num">
  </CFSTOREDPROC>
 <cfset mystruct=StructNew()>
            <cfset mystruct.Org_Num=#Org_Num#>
    <cfreturn mystruct>
     </cffunction>     
    
    <cffunction name="createOrgEnt" access="remote" >
		<cfargument name="Org_Address" type ="string" required = "yes">
        <cfargument name="Org_City" type ="string" required = "yes">
        <cfargument name="Org_Name" type ="string" required = "yes">
        <cfargument name="Org_Phone" type ="string" required = "yes">
        <cfargument name="Org_TBA_ID_REAL" type ="numeric" required = "yes">
        <cfargument name="Org_Web" type ="string" required = "yes">
        <cfargument name="Org_Zip" type ="numeric" required = "yes">
    <cfstoredproc datasource="sfarts_AWS"  procedure="procAirCreateOrgDataEnt"> 
    			<cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Address" value="#Org_Address#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_City" value="#Org_City#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Name" value="#Org_Name#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Phone" value="#Org_Phone#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_TBA_ID_REAL" value="#Org_TBA_ID_REAL#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@Org_Web" value="#Org_Web#">
                <cfprocparam cfsqltype="cf_sql_integer" dbvarname="@Org_Zip" value="#Org_Zip#">
       			<cfprocparam type="out" dbvarname="@Org_Num" cfsqltype="cf_sql_integer"  variable="Org_Num">
  </CFSTOREDPROC>
 <cfset mystruct=StructNew()>
            <cfset mystruct.Org_Num=#Org_Num#>
    <cfreturn mystruct>
     </cffunction>     
    
    
     <cffunction name="setTicketUrl" access="remote" returntype="any" output="false">
  <cfargument name="event_num" required="yes" type="numeric" >
  <cfargument name="ticketLink" required="yes" type="string" >
  <CFSTOREDPROC procedure="dbo.procAirAddTicketLink" datasource="sfarts_AWS">
    <CFPROCPARAM type="IN" dbvarname="@event_num" value="#event_num#" cfsqltype="cf_sql_integer">
    <CFPROCPARAM type="IN" dbvarname="@ticketLink" value="#ticketLink#" cfsqltype="cf_sql_varchar">
  </CFSTOREDPROC>
</cffunction>  

 <cffunction name="setTicketURLStage" access="remote" returntype="any" output="false">
  <cfargument name="event_num" required="yes" type="numeric" >
  <cfargument name="ticketLink" required="yes" type="string" >
  <CFSTOREDPROC procedure="dbo.procAirAddTicketLinkStage" datasource="sfarts_AWS">
    <CFPROCPARAM type="IN" dbvarname="@event_num" value="#event_num#" cfsqltype="cf_sql_integer">
    <CFPROCPARAM type="IN" dbvarname="@ticketLink" value="#ticketLink#" cfsqltype="cf_sql_varchar">
  </CFSTOREDPROC>
</cffunction>  


  <cffunction name="deleteEvent" access="remote" returntype="any" output="false">
  <cfargument name="event_num" required="yes" type="numeric" >
  <CFSTOREDPROC procedure="dbo.procDeleteEvent" datasource="sfarts_AWS">
    <CFPROCPARAM type="IN" dbvarname="@event_num" value="#event_num#" cfsqltype="cf_sql_integer">
  </CFSTOREDPROC>
</cffunction>   

<cffunction name="moveFromStage" access="remote" returntype="any" output="false">
  <cfargument name="event_num" required="yes" type="numeric" >
  <CFSTOREDPROC procedure="dbo.procAirMoveEntEventToMainTable" datasource="sfarts_AWS">
    <CFPROCPARAM type="IN" dbvarname="@event_num" value="#event_num#" cfsqltype="cf_sql_integer">
  </CFSTOREDPROC>
</cffunction>    
 
  <cffunction name="getEventsBySimpleStringSearch" access="remote" returntype="query"> <!--- NO dates involved --->
    	<cfargument name="searchString" type="string" required="yes">
        	<cfstoredproc datasource="sfarts_AWS"  procedure="procSimpleSearchString"> 
            	<cfprocparam dbvarname="@searchString" value="#searchString#" cfsqltype="cf_sql_varchar">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
  
  <cffunction name="getFreeEventTargets" access="remote" returntype="any" output="false">
  <CFSTOREDPROC procedure="dbo.procTBAFinalFreeShows" datasource="sfarts_AWS">
		 <cfprocresult name="recordset1">
  </CFSTOREDPROC>
 <cfreturn recordset1>
</cffunction>   

<cffunction name="getEventsForOrgFree" access="remote" returntype="any" output="false">
  <cfargument name="Org_Num" required="yes" type="numeric" >
  <CFSTOREDPROC procedure="dbo.procAirTBAGetCurrentOrgEvents" datasource="sfarts_AWS">
    <CFPROCPARAM type="IN" dbvarname="@Org_Num" value="#Org_Num#" cfsqltype="cf_sql_integer">
    <cfprocresult name="recordset1">
  </CFSTOREDPROC>
   <cfreturn recordset1>
</cffunction>    


<cffunction name="insertFreeNightLink" access="remote" returntype="any" output="false">
  <cfargument name="Event_Num" required="yes" type="numeric" >
   <cfargument name="end_date" required="yes" type="date" >
  <CFSTOREDPROC procedure="dbo.procAirTBASetFreeNightLink" datasource="sfarts_AWS">
    <CFPROCPARAM type="IN" dbvarname="@Event_Num" value="#Event_Num#" cfsqltype="cf_sql_integer">
    <CFPROCPARAM type="IN" dbvarname="@end_date" value="#end_date#" cfsqltype="cf_sql_date">
  </CFSTOREDPROC>
</cffunction>    
 
 <cffunction name="seeCurrentOrgFuzzyLookup" access="remote" returntype="any" output="false">
  <CFSTOREDPROC procedure="dbo.procSeeCurrentOrgFuzzyLookup" datasource="sfarts_AWS">
    <cfprocresult name="recordset1">
  </CFSTOREDPROC>
   <cfreturn recordset1>
</cffunction>  

 <cffunction name="getTixStatus" access="remote" returntype="any" output="false">
  <CFSTOREDPROC procedure="dbo.procTIXGetTIXStatus" datasource="sfarts_AWS">
    <cfprocresult name="recordset1">
  </CFSTOREDPROC>
   <cfreturn recordset1>
</cffunction>  

<cffunction name="updateTIXHalfPrice" access="remote" returntype="any" output="false">
  <CFSTOREDPROC procedure="dbo.procTIXSetHalfPrice" datasource="sfarts_AWS">
  </CFSTOREDPROC>
</cffunction>     
 
 <cffunction name="punchInTIXLink" access="remote" returntype="any" output="false">
  <cfargument name="Event_Num" required="yes" type="numeric" >
   <cfargument name="master_id" required="yes" type="numeric" >
  <CFSTOREDPROC procedure="dbo.procTIXPunchInTIXLink" datasource="sfarts_AWS">
    <CFPROCPARAM type="IN" dbvarname="@Event_Num" value="#Event_Num#" cfsqltype="cf_sql_integer">
    <CFPROCPARAM type="IN" dbvarname="@master_id" value="#master_id#" cfsqltype="cf_sql_integer">
  </CFSTOREDPROC>
</cffunction> 
   
</cfcomponent>