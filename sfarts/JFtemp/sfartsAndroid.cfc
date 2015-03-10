<cfcomponent>
     <cffunction name="getPodSubjects" access="remote" returntype="Query">
		<cfstoredproc datasource="SFARTS_CFX" procedure="[procGetPodsiPhone]">
        <cfprocresult name="podSubjects">
		</cfstoredproc>
        
		<cfreturn podSubjects>
	</cffunction>
    
	<cffunction name="getDisciplines" access="remote" returntype="Query">
		<cfstoredproc datasource="SFARTS_CFX" procedure="[procGetDisciplinesiPhone]">
        <cfprocresult name="result1">
		</cfstoredproc>
		<cfreturn result1>
	</cffunction>
    
    
     <cffunction name="getEditorialContent" access="remote" returntype="Query">
     	<cfargument name="Disp_Num" required="false" default="99" type="numeric">
     	<cfif Disp_Num EQ 99> 
        	<cfstoredproc datasource="SFARTS_CFX"  procedure="procEditorialGetItemsiPhone"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
	    <cfelse>
		    <cfstoredproc datasource="SFARTS_CFX"  procedure="[procEditorialGetItemsiPhoneByDisp]"> 
		    	<cfprocparam cfsqltype="CF_SQL_INTEGER" dbvarname="@Disp_Num" value="#Disp_Num#">
		            	<cfprocresult name="recordset1">
		            </cfstoredproc>
		</cfif>
	    <cfreturn recordset1>
  </cffunction>
	
	 <cffunction name="getEditorialContentWithEvents" access="remote" returntype="Query">
     	<cfargument name="Disp_Num" required="false" default="99" type="numeric">
     		<cfif Disp_Num EQ 99> 
	        	<cfstoredproc datasource="SFARTS_CFX"  procedure="procEditorialGetItemsiPhone"> 
	            	<cfprocresult name="editorial">
	            </cfstoredproc>
				<cfstoredproc datasource="SFARTS_CFX"  procedure="[procGetEventByEventIDiPhoneEditorial]"> 
	            	<cfprocresult name="events">
	            </cfstoredproc>
				<cfquery dbtype="query" name = "recordset1">
				select distinct editorial.*,events.* from editorial, events where editorial.Event_Num = events.Event_Num 
				</cfquery>
    		<cfelse>
			    <cfstoredproc datasource="SFARTS_CFX"  procedure="[procEditorialGetItemsiPhoneByDisp]"> 
			    	<cfprocparam cfsqltype="CF_SQL_INTEGER" dbvarname="@Disp_Num" value="#Disp_Num#">
			            	<cfprocresult name="recordset1">
			            </cfstoredproc>
    		</cfif>
	   	 	<cfreturn recordset1>
  </cffunction>
  
 <cffunction name="getEventsForEditorialContent" access="remote" returntype="Query">
     	<cfargument name="Disp_Num" required="false" default="99" type="numeric">
     	<cfif Disp_Num EQ 99> 
        	<cfstoredproc datasource="SFARTS_CFX"  procedure="[procGetEventByEventIDiPhoneEditorial]"> 
    			<cfprocresult name="recordset1">
               </cfstoredproc>
	    <cfelse>
    		<cfstoredproc datasource="SFARTS_CFX"  procedure="[procGetEventByEventIDiPhoneEditorialByDisp]"> 
    		<cfprocparam cfsqltype="CF_SQL_INTEGER" dbvarname="@Disp_Num" value="#Disp_Num#">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    	</cfif>
	<cfreturn recordset1>
  </cffunction>
    
    
    
     <cffunction name="getEventsBySimpleStringSearch" access="remote" returntype="Query"> <!--- NO dates incolved --->
    	<cfargument name="searchString" type="string" required="yes" default="Piano">
        	
        	<cfstoredproc datasource="SFARTS_CFX"  procedure="procSimpleSearchStringiPhone"> 
            	<cfprocparam dbvarname="@searchString" value="#searchString#" cfsqltype="cf_sql_varchar">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
    
    
   
    <!--- this is the main date query method for testing returns all disciplines --- UPDATED AND CORRECTED FOR SINGLE DATES--->
   <cffunction name="getMasterEventsByDateALL" access="remote" returntype="Query">
    	<cfargument name="date1" type="date" required="yes" default="6/14/2010">
        <cfargument name="date2" type="date" required="yes" default="6/15/2010">
        
        <cfif date1 NEQ date2>
        
        	<cfstoredproc datasource="SFARTS_CFX"  procedure="[procGetEventRecordsForDateRangePhone]		"> 
            	<cfprocparam dbvarname="@date1" value="#date1#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@date2" value="#date2#" cfsqltype="cf_sql_date">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    		<cfreturn recordset1>
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

			
			
            <cfquery name="baseQuery" datasource="SFARTS_CFX">
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

      			<cfreturn baseQuery>
      </cfif>
  </cffunction>    
  
  <cffunction name="getNumberOFEventsByDisp" access="remote" returntype="Query">
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

			
			
            <cfquery name="baseQuery" datasource="SFARTS_CFX">
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
   <cffunction name="getMasterEventsByDateByDisp" access="remote" returntype="Query">
    	<cfargument name="date1" type="date" required="yes" default="5/30/2010">
        <cfargument name="date2" type="date" required="yes" default="5/30/2010">
        <cfargument name="Disp_Num" type="numeric" required="yes" default="2">
        <cfif Disp_Num EQ 0>
       		 <cfset Disp_Num = 1>
        </cfif>	
        <cfif date1 NEQ date2>
        
        	<cfstoredproc datasource="SFARTS_CFX"  procedure="[procGetEventRecordsForDateRangePhoneByDisp]		"> 
            	<cfprocparam dbvarname="@date1" value="#date1#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@date2" value="#date2#" cfsqltype="cf_sql_date">
                 <cfprocparam dbvarname="@Disp_Num" value="#Disp_Num#" cfsqltype="CF_SQL_SMALLINT" >
            	<cfprocresult name="recordset1">
            </cfstoredproc>
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

			
			
            <cfquery name="recordset1" datasource="SFARTS_CFX">
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
      </cfif>
	<cfreturn recordset1/>
  </cffunction>    
         
    
    
    <cffunction name= "getEventsForThisWeekend" access="remote" returntype="Query">
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
			<cfstoredproc datasource="SFARTS_CFX" procedure="procGetEventsForWeekendForPhone">
            	<cfprocparam dbvarname="@disp" value="#Disp_Num#" cfsqltype="cf_sql_integer">
                <cfprocparam dbvarname="@startlimit" value="#startlimit#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@endlimit" value="#endlimit#" cfsqltype="cf_sql_date">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
      		<cfreturn recordset1>
</cffunction>  

     <cffunction name="getEventByEvent_Num" access="remote" returntype="Query" >  <!--- NO dates incolved --->
    	<cfargument name="EVENT_NUM" type="numeric" required="yes">
        	<cfstoredproc datasource="SFARTS_CFX"  procedure="procGetEventByEventIDiPhone"> 
            	<cfprocparam dbvarname="@ID" value="#EVENT_NUM#" cfsqltype="cf_sql_integer">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
    
    
	<cffunction name="getRandomThumbImages" access="remote" returntype="Query" > 
		<cfstoredproc datasource="SFARTS_CFX"  procedure="procGetRandomImagesPhone"> 
	    	<cfprocresult name="recordset1">
	    </cfstoredproc>
	<cfloop  query="recordset1">
		<cfif recordset1.imageNameThumb EQ ''>
			getRandomThumbImages()
		</cfif>
	</cfloop>		
    <cfreturn recordset1>
  </cffunction>
    
	

    
    
</cfcomponent>