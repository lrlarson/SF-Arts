<cfcomponent>
	<!---
	<cffunction name="getPodSubjectsArray" access="remote" returntype="array">
		<cfstoredproc datasource="SFARTS_CFX" procedure="procGetDisciplines">
        <cfprocresult name="podSubjects">
		</cfstoredproc>
        
        <cfset podArray = arrayNew(1)>
        <cfloop query="podSubjects">
        	<cfset podArray[CurrentRow][1] = id>
			<cfset podArray[CurrentRow][2] = Discipline>
        	<cfset podArray[CurrentRow][3] = curatedBy>
        </cfloop>
        
		<cfreturn podArray>
	</cffunction>
    
    <cffunction name="getPodSubjectsStruct" access="remote" returntype="array">
		<cfstoredproc datasource="SFARTS_CFX" procedure="procGetDisciplines">
        <cfprocresult name="podSubjects">
		</cfstoredproc>
        
         <cfset podArray = arrayNew(1)>
         <cfset arrayindex = 0>
       	 <cfloop query="podSubjects">
       		<cfset podStruct = structNew()>
       		<cfset podStruct.ID = podSubjects.id>
      		<cfset podStruct.Discipline = podSubjects.Discipline>
      		<cfset podStruct.curatedBy = podSubjects.curatedBy>
       		<cfset podArray[++arrayindex] = podStruct>
       </cfloop>
		<cfreturn podArray>
	</cffunction>
    --->
     <cffunction name="getPodSubjects" access="remote" returntype="struct">
		<cfstoredproc datasource="SFARTS_CFX" procedure="[procGetPodsiPhone]">
        <cfprocresult name="podSubjects">
		</cfstoredproc>
        
        <cfset arrGirls = QueryToStruct( podSubjects ) />
   		
		<cfset objectWrapper = structNew()>
		<cfset objectWrapper.Feedname = "getPodSubjects">
		<cfset objectWrapper.Disciplines = #arrGirls#>
		<cfreturn objectWrapper>
	</cffunction>
    
	<cffunction name="getDisciplines" access="remote" returntype="struct">
		<cfstoredproc datasource="SFARTS_CFX" procedure="[procGetDisciplinesiPhone]">
        <cfprocresult name="podSubjects">
		</cfstoredproc>
        
        <cfset arrGirls = QueryToStruct( podSubjects ) />
   			<cfset objectWrapper = structNew()>
			<cfset objectWrapper.Feedname = "getDisciplines">
   			<cfset objectWrapper.Disciplines = #arrGirls#>
		<cfreturn objectWrapper>
	</cffunction>
	
	<cffunction name="getAllLiveEvents" access="remote" returntype="struct">
		<cfstoredproc datasource="SFARTS_CFX" procedure="[procGetAllLiveEventsBC]">
        <cfprocresult name="podSubjects">
		</cfstoredproc>
        
        <cfset arrGirls = QueryToStruct( podSubjects ) />
   			<cfset objectWrapper = structNew()>
			<cfset objectWrapper.Feedname = "allEvents">
            <cfset jsonStatus = insertJSONBCQuery('all events')>	
   			<cfset objectWrapper.Events = #arrGirls#>
		<cfreturn objectWrapper>
	</cffunction>
    
    
     <cffunction name="getEditorialContent" access="remote" returntype="any">
     	<cfargument name="Disp_Num" required="false" default="99" type="numeric">
     		<cfif Disp_Num EQ 99> 
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procEditorialGetItemsBC"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
			
			
         <cfset arrGirls = QueryToStruct( recordset1 ) />   
           <cfset objectWrapper = structNew()>
           <cfset objectWrapper.Feedname = 'getEditorialContent'>
            <cfset objectWrapper.podEditorial = #arrGirls#>
    <cfreturn objectWrapper>
    <cfelse>
    <cfstoredproc datasource="sfarts_CFX"  procedure="[procEditorialGetItemsiPhoneByDisp]"> 
    	<cfprocparam cfsqltype="CF_SQL_INTEGER" dbvarname="@Disp_Num" value="#Disp_Num#">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
         <cfset arrGirls = QueryToStruct( recordset1 ) />   
           <cfset objectWrapper = structNew()>
           <cfset objectWrapper.Feedname = 'getEditorialContent'>
            <cfset objectWrapper.podEditorial = #arrGirls#>
    <cfreturn objectWrapper>
	</cfif>
  </cffunction>
	
	 <cffunction name="getEditorialContentWithEvents" access="remote" returntype="any">
     	<cfargument name="Disp_Num" required="false" default="99" type="numeric">
     		<cfif Disp_Num EQ 99> 
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procEditorialGetItemsiPhone"> 
            	<cfprocresult name="editorial">
            </cfstoredproc>
			<cfstoredproc datasource="sfarts_CFX"  procedure="[procGetEventByEventIDiPhoneEditorial]"> 
            	<cfprocresult name="events">
            </cfstoredproc>
			<cfquery dbtype="query" name = "recordset1">
			select distinct editorial.*,events.* from editorial, events where editorial.Event_Num = events.Event_Num 
			</cfquery>
         <cfset arrGirls = QueryToStruct( recordset1 ) />   
           <cfset objectWrapper = structNew()>
           <cfset objectWrapper.Feedname = 'getEditorialContent'>
            <cfset objectWrapper.podEditorial = #arrGirls#>
    <cfreturn objectWrapper>
    <cfelse>
    <cfstoredproc datasource="sfarts_CFX"  procedure="[procEditorialGetItemsiPhoneByDisp]"> 
    	<cfprocparam cfsqltype="CF_SQL_INTEGER" dbvarname="@Disp_Num" value="#Disp_Num#">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
         <cfset arrGirls = QueryToStruct( recordset1 ) />   
           <cfset objectWrapper = structNew()>
           <cfset objectWrapper.Feedname = 'getEditorialContent'>
            <cfset objectWrapper.podEditorial = #arrGirls#>
    <cfreturn objectWrapper>
    </cfif>
  </cffunction>
  
   <cffunction name="getEventsForEditorialContent" access="remote" returntype="any">
     	<cfargument name="Disp_Num" required="false" default="99" type="numeric">
     		<cfif Disp_Num EQ 99> 
        	<cfstoredproc datasource="sfarts_CFX"  procedure="[procGetEventByEventIDiPhoneEditorial]"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
         <cfset arrGirls = QueryToStruct( recordset1 ) />   
           <cfset objectWrapper = structNew()>
           <cfset objectWrapper.Feedname = 'getEventsForEditorialContent'>
            <cfset objectWrapper.events = #arrGirls#>
    <cfreturn objectWrapper>
    <cfelse>
    <cfstoredproc datasource="sfarts_CFX"  procedure="[procGetEventByEventIDiPhoneEditorialByDisp]"> 
    	<cfprocparam cfsqltype="CF_SQL_INTEGER" dbvarname="@Disp_Num" value="#Disp_Num#">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
         <cfset arrGirls = QueryToStruct( recordset1 ) />   
           <cfset objectWrapper = structNew()>
           <cfset objectWrapper.Feedname = 'getEventsForEditorialContent'>
            <cfset objectWrapper.events = #arrGirls#>
    <cfreturn objectWrapper>
	
	
	
    </cfif>
  </cffunction>
    
    
    
     <cffunction name="getEventsBySimpleStringSearch" access="remote" returntype="any"> <!--- NO dates incolved --->
    	<cfargument name="searchString" type="string" required="yes" default="Piano">
        	
        	<cfstoredproc datasource="sfartsWebUser"  procedure="procSimpleSearchStringiPhone"> 
            	<cfprocparam dbvarname="@searchString" value="#searchString#" cfsqltype="cf_sql_varchar">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
              <cfset arrGirls = QueryToStruct( recordset1 ) />  
			  <cfset objectWrapper = structNew()>
			   <cfset objectWrapper.events = #arrGirls#>
			   <cfset objectWrapper.Feedname = 'getEventsBySimpleStringSearch'>	
			  <cfset objectWrapper.searchString = #searchString#>
			 	  
    <cfreturn objectWrapper>
  </cffunction>
    
    
   
    <!--- this is the main date query method for testing returns all disciplines --- UPDATED AND CORRECTED FOR SINGLE DATES--->
   <cffunction name="getMasterEventsByDateALL" access="remote" returntype="any">
    	<cfargument name="date1" type="date" required="yes" default="6/14/2010">
        <cfargument name="date2" type="date" required="yes" default="6/15/2010">
        
        <cfif date1 NEQ date2>
        
        	<cfstoredproc datasource="sfarts_CFX"  procedure="[procGetEventRecordsForDateRangeBC]		"> 
            	<cfprocparam dbvarname="@date1" value="#date1#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@date2" value="#date2#" cfsqltype="cf_sql_date">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
          <cfset arrGirls = QueryToStruct( recordset1 ) /> 
          
          <cfset objectWrapper = structNew()>
          <cfset objectWrapper.Feedname = 'getMasterEventsByDateALL'>
          <cfset objectWrapper.date1 = #date1#>
		   <cfset objectWrapper.date2 = #date2#>
           <cfset objectWrapper.events = #arrGirls#>
      <cfreturn objectWrapper>
      <cfelse>
      	<!--- It is a query for a specific date --->
       <!--- set variables for use in the code below --->
         	<cfparam name="date_ahead" default="3">
			<cfparam name="day_string" default="Wednesday">
			<cfparam name="num" default="27">
			<cfparam name="disp_num" default="3">
			<CFSET today_date=#now()#>
			
			<CFPARAM NAME="month" DEFAULT="DATEPART(m,date1)">
			<CFPARAM NAME="year" DEFAULT="DATEPART(yyyy,date1)">
			<CFPARAM NAME="day" DEFAULT="DATEPART(dd,date1)">
			<CFPARAM NAME="Discipline" DEFAULT="All_Events">	
            
            <!---  Calculate variables for date portion query  --->
       
            <CFSET future_date = #date1#>
			<CFSET type="d">
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#+1>
            <CFIF #Dateformat(today_date)# EQ #Dateformat(future_date)#>
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#>
            </CFIF>
            <CFSET target_date=#now()#+#date_ahead#>
            <CFSET day_string = #dateformat(target_date, "dddd")#>
            <cfset num = #dateformat(target_date, "d")#>
            <cfset num = "D" & num>
           
         	<!--- query for the date test--->
            
			<cfparam name="Recordset2__date_ahead" default="#date_ahead#">
		<cfparam name="Recordset2__day_string" default="#day_string#">
		<cfparam name="Recordset2__num" default="#num#">
		<cfparam name="Recordset2__disp_num" default="#disp_num#">

			
			
            <cfquery name="baseQuery" datasource="sfarts_CFX">
           SELECT     CAST(Event_Table.timestamp AS BIGINT) AS EDITSTAMP, Event_Table.Event_Num, Event_Table.Date_Difference, ISNULL(Event_Table.Event_Phone, '') AS Event_Phone, 
                      dbo.clean_text(Event_Table.Event_Name) AS Event_Name, dbo.clean_text(Event_Table.Event_Description) AS Event_Description, 
                      Event_Table.Ticket_String, Event_Table.Date_String, Event_Table.Time_String, Org_Table.Org_Name, ISNULL(Org_Table.Org_Web, '') AS Org_Web, 
                      ISNULL(Venue_Table.Venue_address, '') AS Venue_Address, ISNULL(Venue_Table.Venue_City, '') AS Venue_City, Venue_Table.Venue_Name, 
                      ISNULL(Venue_Table.Venue_Phone, '') AS Venue_Phone, ISNULL(Event_Table.ticketLink, '') AS TicketLink, 
                      ISNULL(dbo.MakeYesNo(Event_Table.Child_Discount), 'NO') AS Child_Discount, ISNULL(dbo.MakeYesNo(Event_Table.Senior_Discount), 'NO') 
                      AS Senior_Discount, ISNULL(dbo.MakeYesNo(Event_Table.Student_Discount), 'NO') AS Student_Discount, 
                      ISNULL(dbo.MakeYesNo(Event_Table.TIXLink), 'NO') AS TixLink, ISNULL(dbo.MakeYesNo(Event_Table.TIXHalfPrice), 'NO') AS TIXHalfPrice, 
                      tbl_Neighborhoods.Neighborhood, [Discipline List].Discipline, [Discipline List_1].Discipline AS Discipline_2, Venue_Table.lat, Venue_Table.lon, 
                      ISNULL(Venue_Table.Venue_State, '') AS Venue_State, 
                      'http://www.sfarts.org/share/index.cfm?eventID=' + CAST(Event_Table.Event_Num AS VARCHAR(80)) AS shareURL,editDate
 from Venue_Table INNER JOIN
                      Org_Table INNER JOIN
                      Event_Table ON Org_Table.Org_Num = Event_Table.Org_Num ON Venue_Table.ID = Event_Table.venueID INNER JOIN
                      [Discipline List] ON Event_Table.ID = [Discipline List].ID INNER JOIN
                      [Discipline List] AS [Discipline List_1] ON Event_Table.ID2 = [Discipline List_1].ID LEFT OUTER JOIN
                      tbl_Neighborhoods ON Venue_Table.Venue_Neighborhood = tbl_Neighborhoods.neighborhoodID
WHERE     (Event_Table.Start_Date <= DATEADD(day, #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.End_Date >= DATEADD(day, 
                      #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.Performing_Arts_Event = 1) AND (Event_Table.[#Recordset2__num#] = 1) OR
                      (Event_Table.Start_Date <= DATEADD(day, #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.End_Date >= DATEADD(day, 
                      #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.[#Recordset2__day_string#] = 1) AND (Event_Table.Gallery_Museum_Event = 1) OR
                      (Event_Table.Start_Date <= DATEADD(day, #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.End_Date >= DATEADD(day, 
                      #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.Performing_Arts_Event = 1) AND (Event_Table.[#Recordset2__num#] = 1) OR
                      (Event_Table.Start_Date <= DATEADD(day, #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.End_Date >= DATEADD(day, 
                      #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.[#Recordset2__day_string#] = 1) AND (Event_Table.Gallery_Museum_Event = 1)
ORDER BY Event_Table.Date_Difference
                </cfquery>
               <cfset arrGirls = QueryToStruct( baseQuery ) />  
                <cfset objectWrapper = structNew()>
                
         		 <cfset objectWrapper.date1 = #date1#>
		 		  <cfset objectWrapper.date2 = #date2#>
         		  <cfset objectWrapper.events = #arrGirls#>
         		  <cfset objectWrapper.Feedname = 'getMasterEventsByDateALL'>
      			<cfreturn objectWrapper>
      </cfif>
  </cffunction>    
  
  <cffunction name="getNumberOFEventsByDisp" access="remote" returntype="any">
    	<cfargument name="date1" type="date" required="no" default="#now()#">
        
        
       
      	<!--- It is a query for a specific date --->
       <!--- set variables for use in the code below --->
         	<cfparam name="date_ahead" default="3">
			<cfparam name="day_string" default="Wednesday">
			<cfparam name="num" default="27">
			<cfparam name="disp_num" default="3">
			<CFSET today_date=#now()#>
			
			<CFPARAM NAME="month" DEFAULT="DATEPART(m,date1)">
			<CFPARAM NAME="year" DEFAULT="DATEPART(yyyy,date1)">
			<CFPARAM NAME="day" DEFAULT="DATEPART(dd,date1)">
			<CFPARAM NAME="Discipline" DEFAULT="All_Events">	
            
            <!---  Calculate variables for date portion query  --->
       
            <CFSET future_date = #date1#>
			<CFSET type="d">
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#+1>
            <CFIF #Dateformat(today_date)# EQ #Dateformat(future_date)#>
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#>
            </CFIF>
            <CFSET target_date=#now()#+#date_ahead#>
            <CFSET day_string = #dateformat(target_date, "dddd")#>
            <cfset num = #dateformat(target_date, "d")#>
            <cfset num = "D" & num>
           
         	<!--- query for the date test--->
            
			<cfparam name="Recordset2__date_ahead" default="#date_ahead#">
		<cfparam name="Recordset2__day_string" default="#day_string#">
		<cfparam name="Recordset2__num" default="#num#">
		<cfparam name="Recordset2__disp_num" default="#disp_num#">

			
			
            <cfquery name="baseQuery" datasource="sfarts_CFX">
          SELECT     COUNT(Event_Table.Event_Num) as [Count], [Discipline List].ID as [Disp_Num],[Discipline List].[Discipline]
 FROM         Venue_Table INNER JOIN
                      Org_Table INNER JOIN
                      Event_Table ON Org_Table.Org_Num = Event_Table.Org_Num ON Venue_Table.ID = Event_Table.venueID INNER JOIN
                      [Discipline List] ON Event_Table.ID = [Discipline List].ID
                      
WHERE     ( (Event_Table.Start_Date <= { fn CURDATE() }) AND (Event_Table.End_Date >= { fn CURDATE() }) AND (Event_Table.Performing_Arts_Event = 1) AND (Event_Table.[#Recordset2__num#] = 1) AND [Discipline List].iPhoneOrder IS not NULL) OR
                      ((Event_Table.Start_Date <=  { fn CURDATE() }) AND (Event_Table.End_Date >=  { fn CURDATE() }) AND (Event_Table.[#Recordset2__day_string#] = 1) AND (Event_Table.Gallery_Museum_Event = 1)AND [Discipline List].iPhoneOrder IS not NULL) OR
                      ((Event_Table.Start_Date <=  { fn CURDATE() }) AND (Event_Table.End_Date >=  { fn CURDATE() }) AND (Event_Table.Performing_Arts_Event = 1) AND (Event_Table.[#Recordset2__num#] = 1)AND [Discipline List].iPhoneOrder IS not NULL) OR
                      ((Event_Table.Start_Date <={ fn CURDATE() } AND (Event_Table.End_Date >=  { fn CURDATE() }) AND (Event_Table.[#Recordset2__day_string#] = 1) AND (Event_Table.Gallery_Museum_Event = 1)AND [Discipline List].iPhoneOrder IS not NULL))
					 
group BY [Discipline List].ID ,[Discipline List].[Discipline]
order BY [Discipline List].ID 

                </cfquery>
               <cfset arrGirls = QueryToStruct( baseQuery ) />  
                <cfset objectWrapper = structNew()>
                
         		 <cfset objectWrapper.date1 = #date1#>
         		  <cfset objectWrapper.events = #arrGirls#>
         		  <cfset objectWrapper.Feedname = 'getNumberOFEventsByDisp'>
      			<cfreturn objectWrapper>
  </cffunction>    
        
   <!--- this is the main date query method for testing returns ONE DISP --- UPDATED AND CORRECTED FOR SINGLE DATES--->
   <cffunction name="getMasterEventsByDateByDisp" access="remote" returntype="any">
    	<cfargument name="date1" type="date" required="yes" default="5/30/2010">
        <cfargument name="date2" type="date" required="yes" default="5/30/2010">
        <cfargument name="Disp_Num" type="numeric" required="yes" default="2">
        <cfif date1 NEQ date2>
        
        	<cfstoredproc datasource="sfarts_CFX"  procedure="[procGetEventRecordsForDateRangePhoneByDisp]		"> 
            	<cfprocparam dbvarname="@date1" value="#date1#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@date2" value="#date2#" cfsqltype="cf_sql_date">
                 <cfprocparam dbvarname="@Disp_Num" value="#Disp_Num#" cfsqltype="CF_SQL_SMALLINT" >
            	<cfprocresult name="recordset1">
            </cfstoredproc>
          <cfset arrGirls = QueryToStruct( recordset1 ) /> 
          
          <cfset objectWrapper = structNew()>
          <cfset objectWrapper.Feedname = 'getMasterEventsByDateByDisp'>
          <cfset objectWrapper.date1 = #date1#>
		   <cfset objectWrapper.date2 = #date2#>
		    <cfset objectWrapper.Disp_Num = #Disp_Num#>
           <cfset objectWrapper.events = #arrGirls#>
      <cfreturn objectWrapper>
      <cfelse>
      	<!--- It is a query for a specific date --->
       <!--- set variables for use in the code below --->
         	<cfparam name="date_ahead" default="3">
			<cfparam name="day_string" default="Wednesday">
			<cfparam name="num" default="27">
			
			<CFSET today_date=#now()#>
			
			<CFPARAM NAME="month" DEFAULT="DATEPART(m,date1)">
			<CFPARAM NAME="year" DEFAULT="DATEPART(yyyy,date1)">
			<CFPARAM NAME="day" DEFAULT="DATEPART(dd,date1)">
			<CFPARAM NAME="Discipline" DEFAULT="All_Events">	
            
            <!---  Calculate variables for date portion query  --->
       
            <CFSET future_date = #date1#>
			<CFSET type="d">
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#+1>
            <CFIF #Dateformat(today_date)# EQ #Dateformat(future_date)#>
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#>
            </CFIF>
            <CFSET target_date=#now()#+#date_ahead#>
            <CFSET day_string = #dateformat(target_date, "dddd")#>
            <cfset num = #dateformat(target_date, "d")#>
            <cfset num = "D" & num>
           
         	<!--- query for the date test--->
            
			<cfparam name="Recordset2__date_ahead" default="#date_ahead#">
		<cfparam name="Recordset2__day_string" default="#day_string#">
		<cfparam name="Recordset2__num" default="#num#">
		<cfparam name="Recordset2__disp_num" default="#disp_num#">

			
			
            <cfquery name="baseQuery" datasource="sfarts_CFX">
SELECT     Event_Table.Event_Num, Event_Table.Date_Difference, ISNULL(Event_Table.Event_Phone, '') AS Event_Phone, 
                      dbo.clean_text(Event_Table.Event_Name) AS Event_Name, dbo.clean_text(Event_Table.Event_Description) AS Event_Description, 
                      Event_Table.Ticket_String, Event_Table.Date_String, Event_Table.Time_String, Org_Table.Org_Name, ISNULL(Org_Table.Org_Web, '') AS Org_Web, 
                      ISNULL(Venue_Table.Venue_address, '') AS Venue_Address, ISNULL(Venue_Table.Venue_City, '') AS Venue_City, Venue_Table.Venue_Name, 
                      ISNULL(Venue_Table.Venue_Phone, '') AS Venue_Phone, ISNULL(Event_Table.ticketLink, '') AS TicketLink, 
                      ISNULL(dbo.MakeYesNo(Event_Table.Child_Discount), 'NO') AS Child_Discount, ISNULL(dbo.MakeYesNo(Event_Table.Senior_Discount), 'NO') 
                      AS Senior_Discount, ISNULL(dbo.MakeYesNo(Event_Table.Student_Discount), 'NO') AS Student_Discount, 
                      ISNULL(dbo.MakeYesNo(Event_Table.TIXLink), 'NO') AS TixLink, ISNULL(dbo.MakeYesNo(Event_Table.TIXHalfPrice), 'NO') AS TIXHalfPrice, 
                      tbl_Neighborhoods.Neighborhood, [Discipline List].Discipline, [Discipline List_1].Discipline AS Discipline_2, Venue_Table.lat, Venue_Table.lon, 
                      ISNULL(Venue_Table.Venue_State, '') AS Venue_State, 
                      'http://www.sfarts.org/share/index.cfm?eventID=' + CAST(Event_Table.Event_Num AS VARCHAR(80)) AS shareURL
FROM         Venue_Table INNER JOIN
                      Org_Table INNER JOIN
                      Event_Table ON Org_Table.Org_Num = Event_Table.Org_Num ON Venue_Table.ID = Event_Table.venueID INNER JOIN
                      [Discipline List] ON Event_Table.ID = [Discipline List].ID INNER JOIN
                      [Discipline List] AS [Discipline List_1] ON Event_Table.ID2 = [Discipline List_1].ID LEFT OUTER JOIN
                      tbl_Neighborhoods ON Venue_Table.Venue_Neighborhood = tbl_Neighborhoods.neighborhoodID
WHERE     (Event_Table.Start_Date <= DATEADD(day, #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.End_Date >= DATEADD(day, 
                      #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.Performing_Arts_Event = 1) AND (Event_Table.[#Recordset2__num#] = 1) AND 
                      (Event_Table.ID =  #Recordset2__disp_num#) OR
                      (Event_Table.Start_Date <= DATEADD(day, #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.End_Date >= DATEADD(day, 
                      #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.[#Recordset2__day_string#] = 1) AND (Event_Table.Gallery_Museum_Event = 1) 
                      AND (Event_Table.ID2 =  #Recordset2__disp_num#) OR
                      (Event_Table.Start_Date <= DATEADD(day, #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.End_Date >= DATEADD(day, 
                      #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.Performing_Arts_Event = 1) AND (Event_Table.[#Recordset2__num#] = 1) AND 
                      (Event_Table.ID2 = #Recordset2__disp_num#) OR
                      (Event_Table.Start_Date <= DATEADD(day, #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.End_Date >= DATEADD(day, 
                      #Recordset2__date_ahead#, { fn CURDATE() })) AND (Event_Table.[#Recordset2__day_string#] = 1) AND (Event_Table.Gallery_Museum_Event = 1) 
                      AND (Event_Table.ID =  #Recordset2__disp_num#)
ORDER BY Event_Table.Date_Difference
                </cfquery>
               <cfset arrGirls = QueryToStruct( baseQuery ) />  
                <cfset objectWrapper = structNew()>
                
         		 <cfset objectWrapper.date1 = #date1#>
		 		  <cfset objectWrapper.date2 = #date2#>
		 		  <cfset objectWrapper.Disp_Num = #Disp_Num#>
         		  <cfset objectWrapper.events = #arrGirls#>
         		  <cfset objectWrapper.Feedname = 'getMasterEventsByDateByDisp'>
      			<cfreturn objectWrapper>
      </cfif>
  </cffunction>    
         
    
    
    <cffunction name= "getEventsForThisWeekend" access="remote" returntype="struct">
   		<cfargument name="Disp_Num" type="numeric" required="yes">  
   		<CFSET todaynum=#DayOfWeek(now())#>
        <cfset strdayOfWeek = #DayofWeekAsString(DayOfWeek(now()))#>
		<cfif strdayOfWeek EQ 'Monday'>
            <cfset startlimit = #DateAdd('D',4,Now())#>
            <cfset endlimit = #DateAdd('D',6,Now())#>
            <cfelseif 	strdayOfWeek EQ 'Tuesday'>
            <cfset startlimit = #DateAdd('D',3,Now())#>
            <cfset endlimit = #DateAdd('D',5,Now())#>
            <cfelseif 	strdayOfWeek EQ 'Wednesday'>
            <cfset startlimit = #DateAdd('D',2,Now())#>
            <cfset endlimit = #DateAdd('D',4,Now())#>
            <cfelseif 	strdayOfWeek EQ 'Thursday'>
            <cfset startlimit = #DateAdd('D',1,Now())#>
            <cfset endlimit = #DateAdd('D',3,Now())#>
            <cfelseif 	strdayOfWeek EQ 'Friday'>
            <cfset startlimit = #DateAdd('D',0,Now())#>
            <cfset endlimit = #DateAdd('D',2,Now())#>
            <cfelseif 	strdayOfWeek EQ 'Saturday'>
            <cfset startlimit = #DateAdd('D',0,Now())#>
            <cfset endlimit = #DateAdd('D',1,Now())#>
            <cfelseif 	strdayOfWeek EQ 'Sunday'>
            <cfset startlimit = #DateAdd('D',5,Now())#>
            <cfset endlimit = #DateAdd('D',7,Now())#>
        </cfif>
			<cfstoredproc datasource="sfarts_CFX" procedure="procGetEventsForWeekendForPhone">
            	<cfprocparam dbvarname="@disp" value="#Disp_Num#" cfsqltype="cf_sql_integer">
                <cfprocparam dbvarname="@startlimit" value="#startlimit#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@endlimit" value="#endlimit#" cfsqltype="cf_sql_date">
            	<cfprocresult name="XXYYXX">
            </cfstoredproc>
            <cfset arrGirls = QueryToStruct( XXYYXX ) />  
                <cfset objectWrapper2 = structNew()>
                  
                     <cfset objectWrapper2.DISP1 = #DISP_NUM#>
                 <cfset objectWrapper2.feedName = 'getEventsForThisWeekend'>     
         		  <cfset objectWrapper2.events = #arrGirls#>
      			<cfreturn objectWrapper2>
</cffunction>  

     <cffunction name="getEventByEvent_Num" access="remote" returntype="Struct" >  <!--- NO dates incolved --->
    	<cfargument name="EVENT_NUM" type="numeric" required="yes">
        	<cfstoredproc datasource="sfartsWebUser"  procedure="procGetEventByEventIDiPhone"> 
            	<cfprocparam dbvarname="@ID" value="#EVENT_NUM#" cfsqltype="cf_sql_integer">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
	 <cfset arrGirls = QueryToStruct( recordset1 ) /> 
	 <cfset objectWrapper3 = structNew()>
		 <cfset objectWrapper3.Feedname = 'getEventByEvent_Num'>	
	 <cfset objectWrapper3.Events = #arrGirls#>
	 <cfset objectWrapper3.Event_Num = #EVENT_NUM#>
    <cfreturn objectWrapper3>
  </cffunction>
    
    
	<cffunction name="getRandomThumbImages" access="remote" returntype="Struct" > 
		 
        	<cfstoredproc datasource="sfartsWebUser"  procedure="procGetRandomImagesPhone"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
	<cfloop  query="recordset1">
		<cfif recordset1.imageNameThumb EQ ''>
			getRandomThumbImages()
		</cfif>
	</cfloop>		
	 <cfset arrGirls = QueryToStruct( recordset1 ) /> 
	 <cfset objectWrapper3 = structNew()>
		 <cfset objectWrapper3.Feedname = 'getRandomThumbImages'>	
	 <cfset objectWrapper3.Images = #arrGirls#>
    <cfreturn objectWrapper3>
  </cffunction>
    
	
	<cffunction name="getFeedStatus" access="remote" returntype="Struct" >
		<cfargument name="date1" type="date" required="no" default="">
		<cfargument name="firstRun" type="string" required="no" default="FALSE">
		<cfset today_date = #now()#>
		
		<cfif (DateDiff("d", date1, today_date)) EQ 0 AND firstRun EQ "TRUE">
			<cfstoredproc datasource="sfartsWebUser"  procedure="procCacheFirstRunIphone"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
		<cfelseif (DateDiff("d", date1, today_date)) EQ 0 AND firstRun EQ "FALSE">
			<cfstoredproc datasource="sfartsWebUser"  procedure="procCacheSecondRunIphone"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
		<cfelseif (DateDiff("d", date1, today_date)) LT 29 AND firstRun EQ "FALSE">
			<cfstoredproc datasource="sfartsWebUser"  procedure="procCacheSecondDayIphone"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
		<cfelse>
			<cfstoredproc datasource="sfartsWebUser"  procedure="procCacheFirstRunIphone"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
		</cfif>
		<cfset objectWrapper3 = structNew()>
		<cfset arrGirls = QueryToStruct( recordset1 ) /> 
		 <cfset objectWrapper3.Feedname = 'getFeedStatus'>	
	 <cfset objectWrapper3.updateStatus = #arrGirls#>
    <cfreturn objectWrapper3>
		
		
	</cffunction>
	
	
    <cffunction name="insertJSONBCQuery" access="remote" returntype="Any" >
		<cfargument name="Feedname" type="string" required="true" >
			<cfstoredproc datasource="sfarts_CFX" procedure="[procJSONBCInsertQuery]">
				<cfprocparam cfsqltype="CF_SQL_VARCHAR" value="allLiveEvents" dbvarname="@feedname">
			</cfstoredproc>
		<cfreturn 'true'>	
	</cffunction>
	
	<cffunction name="getTenStories" access="remote" returntype="any">
	<cfstoredproc datasource="sfarts_CFX" procedure="procTravelGetTenHighlights">
    <cfprocresult name="recordset1">
    </cfstoredproc>
    			 <cfset arrGirls = QueryToStruct( recordset1 ) /> 
     			 <cfset objectWrapper = structNew()>
			   <cfset objectWrapper.stories = #arrGirls#>
			   <cfset objectWrapper.Feedname = 'getTenRandomStoriesByDisp'>	 
               <!---
			 	 <cfset jsonStatus = insertJSONQuery(objectWrapper.Feedname)>
				 
				 --->
		<cfreturn objectWrapper>
   </cffunction>
   
   <cffunction name="getTenStoriesFixed" access="remote" returntype="any">
	<cfstoredproc datasource="sfarts_CFX" procedure="procTravelGetTenStoriesFixed">
    <cfprocresult name="recordset1">
    </cfstoredproc>
    			 <cfset arrGirls = QueryToStruct( recordset1 ) /> 
     			 <cfset objectWrapper = structNew()>
			   <cfset objectWrapper.stories = #arrGirls#>
			   <cfset objectWrapper.Feedname = 'getTenRandomStoriesByDispFixed'>	 
               <!---
			 	 <cfset jsonStatus = insertJSONQuery(objectWrapper.Feedname)>
				 
				 --->
		<cfreturn objectWrapper>
   </cffunction>
    
    <cffunction name="QueryToStruct" access="public" returntype="any" output="false"
	hint="Converts an entire query or the given record to a struct. This might return a structure (single record) or an array of structures.">

	<!--- Define arguments. --->
	<cfargument name="Query" type="query" required="true" />
	<cfargument name="Row" type="numeric" required="false" default="0" />

	<cfscript>

		// Define the local scope.
		var LOCAL = StructNew();

		// Determine the indexes that we will need to loop over.
		// To do so, check to see if we are working with a given row,
		// or the whole record set.
		if (ARGUMENTS.Row){

			// We are only looping over one row.
			LOCAL.FromIndex = ARGUMENTS.Row;
			LOCAL.ToIndex = ARGUMENTS.Row;

		} else {

			// We are looping over the entire query.
			LOCAL.FromIndex = 1;
			LOCAL.ToIndex = ARGUMENTS.Query.RecordCount;

		}

		// Get the list of columns as an array and the column count.
		LOCAL.Columns = ListToArray( ARGUMENTS.Query.ColumnList );
		LOCAL.ColumnCount = ArrayLen( LOCAL.Columns );

		// Create an array to keep all the objects.
		LOCAL.DataArray = ArrayNew( 1 );

		// Loop over the rows to create a structure for each row.
		for (LOCAL.RowIndex = LOCAL.FromIndex ; LOCAL.RowIndex LTE LOCAL.ToIndex ; LOCAL.RowIndex = (LOCAL.RowIndex + 1)){

			// Create a new structure for this row.
			ArrayAppend( LOCAL.DataArray, StructNew() );

			// Get the index of the current data array object.
			LOCAL.DataArrayIndex = ArrayLen( LOCAL.DataArray );

			// Loop over the columns to set the structure values.
			for (LOCAL.ColumnIndex = 1 ; LOCAL.ColumnIndex LTE LOCAL.ColumnCount ; LOCAL.ColumnIndex = (LOCAL.ColumnIndex + 1)){

				// Get the column value.
				LOCAL.ColumnName = LOCAL.Columns[ LOCAL.ColumnIndex ];

				// Set column value into the structure.
				LOCAL.DataArray[ LOCAL.DataArrayIndex ][ LOCAL.ColumnName ] = ARGUMENTS.Query[ LOCAL.ColumnName ][ LOCAL.RowIndex ];

			}

		}


		// At this point, we have an array of structure objects that
		// represent the rows in the query over the indexes that we
		// wanted to convert. If we did not want to convert a specific
		// record, return the array. If we wanted to convert a single
		// row, then return the just that STRUCTURE, not the array.
		if (ARGUMENTS.Row){

			// Return the first array item.
			return( LOCAL.DataArray[ 1 ] );

		} else {

			// Return the entire array.
			return( LOCAL.DataArray );

		}

	</cfscript>
</cffunction>
    
    
    
    
    
    
    
    
</cfcomponent>