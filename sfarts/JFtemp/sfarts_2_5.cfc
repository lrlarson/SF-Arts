<cfcomponent>
 
   <cffunction name="insertEmailAddress" access="remote" returntype="any">
      <cfargument name="emailAddress" type="string" required="yes">
      <cfargument name="fName" type="string" required="yes">
      <cfargument name="lName" type="string" required="yes">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procInsertEmailAddress"> 
            	<cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@emailAddress" value="#emailAddress#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@fName" value="#fName#">
                <cfprocparam cfsqltype="cf_sql_varchar" dbvarname="@lName" value="#lName#">
            </cfstoredproc>
  </cffunction>


	<cffunction name="getEventBySpecificDate" access="remote" returntype="query">
		<cfargument name="month" type="numeric" required="yes" default="3">
        <cfargument name="year" type="numeric" required="yes" default="2005">
        <cfargument name="day" type="numeric" required="yes" default="10">
         <cfargument name="disp" type="string" required="yes" default="Music">
         <!--- set variables for use in the code below --->
         	<cfparam name="date_ahead" default="3">
			<cfparam name="day_string" default="Wednesday">
			<cfparam name="num" default="27">
			<cfparam name="disp_num" default="3">
			<CFSET today_date=#now()#>
            
            <!---  Calculate variables for query  get rid of --->
            <CFSET future_date = CreateDate(#year#, #month#, #day#)>
			<CFSET type="d">
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#+1>
            <CFIF #Dateformat(today_date)# EQ #Dateformat(future_date)#>
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#>
            </CFIF>
            <CFSET target_date=#now()#+#date_ahead#>
            <CFSET day_string = #dateformat(target_date, "dddd")#>
            <cfset num = #dateformat(target_date, "d")#>
            <cfset num = "D" & num>
            <cfif #disp#EQ"Theater">
            <CFSET #disp_num#="1">
            <cfelseif #disp#EQ"Dance">
            <CFSET #disp_num#="2">
            <cfelseif #disp#EQ"Music">
            <CFSET #disp_num#="3">
            <cfelseif #disp#EQ"Literary_Arts">
            <CFSET #disp_num#="4">
            <cfelseif #disp#EQ"Festivals">
            <CFSET #disp_num#="5">
            <cfelseif #disp#EQ"Film/Video">
            <CFSET #disp_num#="6">
            <cfelseif #disp#EQ"Museums">
            <CFSET #disp_num#="7">
            <cfelseif #disp#EQ"Galleries">
            <CFSET #disp_num#="8">
            <cfelseif #disp#EQ"Children">
            <CFSET #disp_num#="9">
            <cfelseif #disp#EQ"Special_Events">
            <CFSET #disp_num#="10">
            <cfelseif #disp#EQ"All_Events">
            <CFSET #disp_num#="99">
            </cfif>
         
     
         
         	<!--- query --->
            
            <cfquery name="Recordset2" datasource="sfarts_CFX">
                SELECT Org_Table.Org_Name, Org_Table.Org_Web, Event_Table.Event_Name, Event_Table.ID, Event_Table.Event_Num,
                Event_Table.ID2, Event_Table.Venue_Name, Event_Table.Event_Phone, Event_Table.Event_Description, 
                Event_Table.Ticket_String, Event_Table.Date_String, Event_Table.Start_Date, Event_Table.End_Date, 
                Event_Table.Time_String,Venue_Table.Venue_Name, Venue_Table.Venue_address, Venue_Table.Venue_Phone 
                FROM Venue_Table INNER JOIN (Org_Table INNER JOIN Event_Table ON Org_Table.Org_Num = Event_Table.Org_Num) ON Venue_Table.Venue_Name = Event_Table.Venue_Name 
                <cfif disp EQ "All_Events">
                WHERE (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.Performing_Arts_Event)=1) AND ((Event_Table.[#num#])=1))
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1) AND ((Event_Table.Gallery_Museum_Event)=1)) OR (((Event_Table.ID2)=#disp_num#)
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.Performing_Arts_Event)=1) AND ((Event_Table.[#num#])=1))
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1)
                AND ((Event_Table.Gallery_Museum_Event)=1))
                ORDER BY Event_Table.Date_Difference
                <cfelseif disp EQ "Performing_Events">
                WHERE 
                (((Event_Table.ID) < 7) AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.Performing_Arts_Event)=1) 
                AND ((Event_Table.[#num#])=1)) 
                OR (((Event_Table.ID) < 7) 
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.#day_string#)=1) AND ((Event_Table.Gallery_Museum_Event)=1)) 
                OR (((Event_Table.ID2) < 7) AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.Performing_Arts_Event)=1) 
                AND ((Event_Table.[#num#])=1)) OR (((Event_Table.ID2) < 7) 
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.#day_string#)=1) AND ((Event_Table.Gallery_Museum_Event)=1)) 
                ORDER BY Event_Table.Date_Difference;
                <cfelseif disp EQ "Visual_Events">
                WHERE 
                (((((Event_Table.ID) = 7)OR ((Event_Table.ID) = 8) ) ) AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.Performing_Arts_Event)=1) 
                AND ((Event_Table.[#num#])=1)) 
                OR ( (((Event_Table.ID) = 7) OR ((Event_Table.ID) = 8))
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.#day_string#)=1) AND ((Event_Table.Gallery_Museum_Event)=1)) 
                OR ((((Event_Table.ID2) = 7)OR ((Event_Table.ID) = 8) )
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.Performing_Arts_Event)=1) 
                AND ((Event_Table.[#num#])=1)) 
                OR ((((Event_Table.ID2) = 7)OR ((Event_Table.ID) = 8) ) 
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.#day_string#)=1) AND ((Event_Table.Gallery_Museum_Event)=1)) 
                ORDER BY Event_Table.Date_Difference;
                <cfelse>
                WHERE 
                (((Event_Table.ID)=#disp_num#) AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.Performing_Arts_Event)=1) 
                AND ((Event_Table.[#num#])=1)) OR (((Event_Table.ID)=#disp_num#) 
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.#day_string#)=1) AND ((Event_Table.Gallery_Museum_Event)=1)) 
                OR (((Event_Table.ID2)=#disp_num#) AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.Performing_Arts_Event)=1) 
                AND ((Event_Table.[#num#])=1)) OR (((Event_Table.ID2)=#disp_num#) 
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) 
                AND ((Event_Table.#day_string#)=1) AND ((Event_Table.Gallery_Museum_Event)=1)) 
                ORDER BY Event_Table.Date_Difference;
                </cfif>
                </cfquery>
		<cfreturn Recordset2>
	</cffunction>
   
   
   
   <cffunction name="getEventsByDispAndPeriod" access="remote" returntype="query">
    	<cfargument name="dateahead" type="numeric" required="yes">
        <cfargument name="dispNum" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procgetEventsByDispAndDateRange"> 
            	<cfprocparam dbvarname="@dateahead" value="#dateahead#" cfsqltype="cf_sql_integer">
                <cfprocparam dbvarname="@disp" value="#dispNum#" cfsqltype="cf_sql_integer">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
    
    
<cffunction name= "getEventsForThisWeekend" access="remote" returntype="query">
   		<cfargument name="disp" type="numeric" required="yes">  
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
			<cfstoredproc datasource="sfarts_CFX" procedure="procGetEventsForWeekend">
            	<cfprocparam dbvarname="@disp" value="#disp#" cfsqltype="cf_sql_integer">
                <cfprocparam dbvarname="@endlimit" value="#endlimit#" cfsqltype="cf_sql_date">
            	<cfprocresult name="XXYYXX">
            </cfstoredproc>
		<cfreturn XXYYXX>
</cffunction>  

 <cffunction name="getFreeEventsByTimePeriod" access="remote" returntype="query">
    	<cfargument name="dateahead" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetFreeEventsByDatesAhead"> 
            	<cfprocparam dbvarname="@dateahead" value="#dateahead#" cfsqltype="cf_sql_integer">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
 
 
 <cffunction name="getEventsByOrgName" access="remote" returntype="query">
    	<cfargument name="orgName" type="string" required="yes">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetEventsByOrgName"> 
            	<cfprocparam dbvarname="@orgName" value="#orgName#" cfsqltype="cf_sql_varchar">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
  
 
  
  
  
  
  
  
  
  
  <cffunction name="getEventsBetweenTwoDates" access="remote" returntype="query">

  
 		 <cfargument name="month" type="numeric" required="yes" default="3">
        <cfargument name="year" type="numeric" required="yes" default="2005">
        <cfargument name="day" type="numeric" required="yes" default="10">
         <cfargument name="disp" type="string" required="yes" default="Music">
         <cfargument name="dateAhead" type="numeric" required="yes" default="7">
  
   <!--- set variables for use in the code below --->
   		<cfparam name="disp_num" default="3">
   
   
   <!---
   today_date = now
   future_date = the beginning date of the proposed range
   dateahead = the number of days in addition to the futureDate that should be searched
   do not confuse dateahead with date_ahead -- they are different parameters.
   --->
         <CFSET today_date=#now()#>
        <CFSET future_date = CreateDate(year, month, day)>
        <CFSET type="d">
        <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#+1>
        <CFIF #Dateformat(today_date)# EQ #Dateformat(future_date)#>
        <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#>
        </CFIF>
        <CFSET target_date=#now()#+#date_ahead#>
        <CFSET day_string = #dateformat(target_date, "dddd")#>
        <cfset num = #dateformat(target_date, "dd")#>
        
    
        <cfif #disp#EQ"Theater">
        <CFSET #disp_num#="1">
        <cfelseif #disp#EQ"Dance">
        <CFSET #disp_num#="2">
        <cfelseif #disp#EQ"Music">
        <CFSET #disp_num#="3">
        <cfelseif #disp#EQ"Literary_Arts">
        <CFSET #disp_num#="4">
        <cfelseif #disp#EQ"Festivals">
        <CFSET #disp_num#="5">
        <cfelseif #disp#EQ"Film/Video">
        <CFSET #disp_num#="6">
        <cfelseif #disp#EQ"Museums">
        <CFSET #disp_num#="7">
        <cfelseif #disp#EQ"Galleries">
        <CFSET #disp_num#="8">
        <cfelseif #disp#EQ "Children">
        <CFSET #disp_num#="9">
        <cfelseif #disp#EQ"Special_Events">
        <CFSET #disp_num#="10">
        </cfif>

               <cfquery name="Recordset1" datasource=sfarts_CFX>
        SELECT Event_Table.Event_Num, Event_Table.Venue_Name, Event_Table.Event_Phone, Event_Table.Event_Name, Event_Table.Event_Description, Event_Table.ID, Event_Table.Ticket_Low, Event_Table.Ticket_High, Event_Table.Ticket_String, Event_Table.Start_Date, Event_Table.End_Date, Event_Table.Date_String, Event_Table.Event_Time, Event_Table.Time_String, Event_Table.Org_Num, Event_Table.Child_Discount, Event_Table.Senior_Discount, Event_Table.Free_For_All, Event_Table.Student_Discount, Event_Table.ID2, Event_Table.Date_Difference, Event_Table.Event_Name, [Discipline List].ID, [Discipline List].Discipline, Org_Table.Org_Num, Org_Table.Org_Name, Org_Table.Org_Web, Org_Table.Org_Phone, Org_Table.Org_Address, Org_Table.Org_City, Org_Table.Org_Zip, Venue_Table.Venue_Web, Venue_Table.Venue_Phone, Venue_Table.Venue_address, Venue_Table.Venue_City, Venue_Table.Venue_Zip FROM (([Discipline List] INNER JOIN Event_Table ON [Discipline List].ID = Event_Table.ID) INNER JOIN Org_Table ON Event_Table.Org_Num = Org_Table.Org_Num) INNER JOIN Venue_Table ON Event_Table.Venue_Name
        = Venue_Table.Venue_Name
        <CFIF #disp# EQ "All_Events">
        WHERE Event_Table.Start_Date <=#future_date# AND Event_Table.End_Date >=#future_date#
        OR Event_Table.Start_Date Between #future_date# And #future_date#+#dateahead#
        ORDER BY Event_Table.Date_Difference,[Event_Table].[Start_Date]
        <CFELSEIF #disp# EQ "Performing_Events">
        WHERE (((Event_Table.Start_Date)<=#future_date#) AND ((Event_Table.End_Date)>=#future_date#) 
        AND (((Event_Table.ID)<7 OR (Event_Table.ID2)<7))) 
        OR (((Event_Table.Start_Date) Between #future_date# And #future_date#+#dateahead#)
        AND (((Event_Table.ID)<7) or ((Event_Table.ID2)<7)))
        ORDER BY [Event_Table].[Date_Difference],[Event_Table].[Start_Date]
        <CFELSEIF #disp# EQ "Visual_Events">
        WHERE (((Event_Table.Start_Date)<=#future_date#) AND ((Event_Table.End_Date)>=#future_date#) 
        AND (((Event_Table.ID)=7 OR((Event_Table.ID)=8)  OR ((Event_Table.ID2)=7OR (Event_Table.ID2)=8 )))) 
        OR (((Event_Table.Start_Date) Between #future_date# And #future_date#+#dateahead#)
        AND ( (((Event_Table.ID)=7)OR((Event_Table.ID)=8) )
        OR ((Event_Table.ID2)=7) OR ((Event_Table.ID2)=8)))
        ORDER BY [Event_Table].[Date_Difference],[Event_Table].[Start_Date]
        <CFELSE>
        WHERE (((Event_Table.Start_Date)<=#future_date#) AND ((Event_Table.End_Date)>=#future_date#) AND (((Event_Table.ID)=#disp_num# OR (Event_Table.ID2)=#disp_num#))) OR (((Event_Table.Start_Date) Between #future_date# And 				#future_date#+#dateahead#)
        AND (((Event_Table.ID)=#disp_num#) or ((Event_Table.ID2)=#disp_num#)))
        ORDER BY [Event_Table].[Date_Difference],[Event_Table].[Start_Date]
        </CFIF>
        </cfquery>     
            
    <cfreturn Recordset1>        
  </cffunction>
  
   <cffunction name="getNumberOfEventsByDispByDateRange" access="remote" returntype="query">
    	<cfargument name="date1" type="date" required="yes">
        <cfargument name="date2" type="date" required="yes">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetNumberOfEventsByDispByDateRange2"> 
            	<cfprocparam dbvarname="@date1" value="#date1#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@date2" value="#date2#" cfsqltype="cf_sql_date">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
       
    <cfreturn recordset1>
  </cffunction>
  
  <cffunction name="getNumberOfEventsByNeighborhoodByDateRange" access="remote" returntype="query">
    	<cfargument name="date1" type="date" required="yes">
        <cfargument name="date2" type="date" required="yes">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetEventsByNeighborhoodCount"> 
            	<cfprocparam dbvarname="@date1" value="#date1#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@date2" value="#date2#" cfsqltype="cf_sql_date">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
       
    <cfreturn recordset1>
  </cffunction>
   
  
  
  
   <cffunction name="getNumberOfEventsByDispByDateRangeTest" access="remote" returntype="query">
   
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetNumberOfEventsByDispByDateRangeTEST"> 
            
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
  
 <cffunction name="getEventsBetweenTwoDates_N_Disciplines" access="remote" returntype="query">

  
 		 <cfargument name="month" type="numeric" required="yes" default="3">
        <cfargument name="year" type="numeric" required="yes" default="2005">
        <cfargument name="day" type="numeric" required="yes" default="10">
         <cfargument name="dateAhead" type="numeric" required="yes" default="7">
         
         <!--- insert here boolean list of search values --->
          <cfargument name="Music" type="boolean" required="yes" default="false">
           <cfargument name="Dance" type="boolean" required="yes" default="false">
         <!--- etc...--->
  
   <!--- set variables for use in the code below --->
   		<cfparam name="disp_num" default="3">
   
   
   <!---
   today_date = now
   future_date = the beginning date of the proposed range
   dateahead = the number of days in addition to the futureDate that should be searched
   do not confuse dateahead with date_ahead -- they are different parameters.
   --->
         <CFSET today_date=#now()#>
        <CFSET future_date = CreateDate(year, month, day)>
        <CFSET type="d">
        <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#+1>
        <CFIF #Dateformat(today_date)# EQ #Dateformat(future_date)#>
        <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#>
        </CFIF>
        <CFSET target_date=#now()#+#date_ahead#>
        <CFSET day_string = #dateformat(target_date, "dddd")#>
        <cfset num = #dateformat(target_date, "dd")#>
        
    
        <cfif #disp#EQ"Theater">
        <CFSET #disp_num#="1">
        <cfelseif #disp#EQ"Dance">
        <CFSET #disp_num#="2">
        <cfelseif #disp#EQ"Music">
        <CFSET #disp_num#="3">
        <cfelseif #disp#EQ"Literary_Arts">
        <CFSET #disp_num#="4">
        <cfelseif #disp#EQ"Festivals">
        <CFSET #disp_num#="5">
        <cfelseif #disp#EQ"Film/Video">
        <CFSET #disp_num#="6">
        <cfelseif #disp#EQ"Museums">
        <CFSET #disp_num#="7">
        <cfelseif #disp#EQ"Galleries">
        <CFSET #disp_num#="8">
        <cfelseif #disp#EQ "Children">
        <CFSET #disp_num#="9">
        <cfelseif #disp#EQ"Special_Events">
        <CFSET #disp_num#="10">
        </cfif>

               <cfquery name="Recordset1" datasource=sfarts_CFX>
        SELECT Event_Table.Event_Num, Event_Table.Venue_Name, Event_Table.Event_Phone, Event_Table.Event_Name, Event_Table.Event_Description, Event_Table.ID, Event_Table.Ticket_Low, Event_Table.Ticket_High, Event_Table.Ticket_String, Event_Table.Start_Date, Event_Table.End_Date, Event_Table.Date_String, Event_Table.Event_Time, Event_Table.Time_String, Event_Table.Org_Num, Event_Table.Child_Discount, Event_Table.Senior_Discount, Event_Table.Free_For_All, Event_Table.Student_Discount, Event_Table.ID2, Event_Table.Date_Difference, Event_Table.Event_Name, [Discipline List].ID, [Discipline List].Discipline, Org_Table.Org_Num, Org_Table.Org_Name, Org_Table.Org_Web, Org_Table.Org_Phone, Org_Table.Org_Address, Org_Table.Org_City, Org_Table.Org_Zip, Venue_Table.Venue_Web, Venue_Table.Venue_Phone, Venue_Table.Venue_address, Venue_Table.Venue_City, Venue_Table.Venue_Zip FROM (([Discipline List] INNER JOIN Event_Table ON [Discipline List].ID = Event_Table.ID) INNER JOIN Org_Table ON Event_Table.Org_Num = Org_Table.Org_Num) INNER JOIN Venue_Table ON Event_Table.Venue_Name
        = Venue_Table.Venue_Name
        <CFIF #disp# EQ "All_Events">
        WHERE Event_Table.Start_Date <=#future_date# AND Event_Table.End_Date >=#future_date#
        OR Event_Table.Start_Date Between #future_date# And #future_date#+#dateahead#
        ORDER BY Event_Table.Date_Difference,[Event_Table].[Start_Date]
        <CFELSEIF #disp# EQ "Performing_Events">
        WHERE (((Event_Table.Start_Date)<=#future_date#) AND ((Event_Table.End_Date)>=#future_date#) 
        AND (((Event_Table.ID)<7 OR (Event_Table.ID2)<7))) 
        OR (((Event_Table.Start_Date) Between #future_date# And #future_date#+#dateahead#)
        AND (((Event_Table.ID)<7) or ((Event_Table.ID2)<7)))
        ORDER BY [Event_Table].[Date_Difference],[Event_Table].[Start_Date]
        <CFELSEIF #disp# EQ "Visual_Events">
        WHERE (((Event_Table.Start_Date)<=#future_date#) AND ((Event_Table.End_Date)>=#future_date#) 
        AND (((Event_Table.ID)=7 OR((Event_Table.ID)=8)  OR ((Event_Table.ID2)=7OR (Event_Table.ID2)=8 )))) 
        OR (((Event_Table.Start_Date) Between #future_date# And #future_date#+#dateahead#)
        AND ( (((Event_Table.ID)=7)OR((Event_Table.ID)=8) )
        OR ((Event_Table.ID2)=7) OR ((Event_Table.ID2)=8)))
        ORDER BY [Event_Table].[Date_Difference],[Event_Table].[Start_Date]
        <CFELSE>
        WHERE (((Event_Table.Start_Date)<=#future_date#) AND ((Event_Table.End_Date)>=#future_date#) AND (((Event_Table.ID)=#disp_num# OR (Event_Table.ID2)=#disp_num#))) OR (((Event_Table.Start_Date) Between #future_date# And 				#future_date#+#dateahead#)
        AND (((Event_Table.ID)=#disp_num#) or ((Event_Table.ID2)=#disp_num#)))
        ORDER BY [Event_Table].[Date_Difference],[Event_Table].[Start_Date]
        </CFIF>
        </cfquery>     
            
    <cfreturn Recordset1>        
  </cffunction> 
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  <cffunction name="getEventsSetBySpecificDate" access="remote" returntype="query">
 		 <cfargument name="date1" type="date" required="yes">
		<!---
        <cfargument name="month" type="numeric" required="yes" default="3">
        <cfargument name="year" type="numeric" required="yes" default="2005">
        <cfargument name="day" type="numeric" required="yes" default="10">
		--->
		
         <!--- set variables for use in the code below --->
         	<cfparam name="date_ahead" default="3">
			<cfparam name="day_string" default="Wednesday">
			<cfparam name="num" default="27">
			<cfparam name="disp_num" default="3">
			<CFSET today_date=#now()#>
            
            <!---  Calculate variables for query  --->
           <!--- old
            <CFSET future_date = CreateDate(#year#, #month#, #day#)> 
			--->
            <CFSET future_date = date1>
			<CFSET type="d">
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#+1>
            <CFIF #Dateformat(today_date)# EQ #Dateformat(future_date)#>
            <CFSET date_ahead=#Abs(DateDiff(type, future_date, today_date))#>
            </CFIF>
            <CFSET target_date=#now()#+#date_ahead#>
            <CFSET day_string = #dateformat(target_date, "dddd")#>
            <cfset num = #dateformat(target_date, "d")#>
            <cfset num = "D" & num>
           
         	<!--- query --->
            
            <cfquery name="Recordset2" datasource="sfarts_CFX">
               SELECT Event_Table.Event_Num, Event_Table.ID, Event_Table.ID2, Event_Table.Free_For_All, Event_Table.Date_Difference, Event_Table.Event_Phone, 
                      Event_Table.Event_Name, Event_Table.Event_Description, Event_Table.Ticket_String, Event_Table.Date_String, Event_Table.Time_String, 
                      Event_Table.Org_Num, Org_Table.Org_Name, Org_Table.Org_Web, Venue_Table.Venue_address, Venue_Table.Venue_City, Venue_Table.Venue_Zip, 
                      Venue_Table.Venue_Name, Venue_Table.Venue_Phone, Venue_Table.Venue_Neighborhood, Event_Table.ticketLink, Event_Table.Child_Discount, Event_Table.Senior_Discount,Event_Table.Student_Discount
                FROM Venue_Table INNER JOIN (Org_Table INNER JOIN Event_Table ON Org_Table.Org_Num = Event_Table.Org_Num) ON Venue_Table.Venue_Name = Event_Table.Venue_Name 
           
                WHERE (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() }))  AND ((Event_Table.[#num#])=1))
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1)) OR (((Event_Table.ID2)=#disp_num#)
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.[#num#])=1))
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1))
                ORDER BY Event_Table.Date_Difference
                </cfquery>
		<cfreturn Recordset2>
	</cffunction>
  
   <cffunction name="getOrgNames" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetOrgNames"> 
            	<cfprocresult name="recordset1">*
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
  
   <cffunction name="getEventsSpecificDateWithParameters" access="remote" returntype="query">
 		 <cfargument name="date1" type="date" required="yes">
         <cfargument name="numberOfDisps" type="numeric" required="yes">
         <cfargument name="numberOfFilters" type="numeric" required="yes">
		<cfargument name="music" type="boolean" required="yes">	
        <cfargument name="dance" type="boolean" required="yes">	
        <cfargument name="theater" type="boolean" required="yes">	
        <cfargument name="literary" type="boolean" required="yes">
        <cfargument name="festival" type="boolean" required="yes">
        <cfargument name="film" type="boolean" required="yes">
         <cfargument name="museum" type="boolean" required="yes">
        <cfargument name="gallery" type="boolean" required="yes">
         <cfargument name="special" type="boolean" required="yes">
        <cfargument name="web" type="boolean" required="yes">
         <cfargument name="children" type="boolean" required="yes">
          <cfargument name="free" type="boolean" required="yes">
            <cfargument name="ticketAvailable" type="boolean" required="yes">
        
		
         <!--- set variables for use in the code below --->
         	<cfparam name="date_ahead" default="3">
			<cfparam name="day_string" default="Wednesday">
			<cfparam name="num" default="27">
			<cfparam name="disp_num" default="3">
			<CFSET today_date=#now()#>
            
            <!---  Calculate variables for date portion query  --->
       
            <CFSET future_date = date1>
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
            
            <cfquery name="baseQuery" datasource="sfarts_CFX">
               SELECT Event_Table.Event_Num, Event_Table.ID, Event_Table.ID2, Event_Table.Free_For_All, Event_Table.Date_Difference, Event_Table.Event_Phone, 
                      Event_Table.Event_Name, Event_Table.Event_Description, Event_Table.Ticket_String, Event_Table.Date_String, Event_Table.Time_String, 
                      Event_Table.Org_Num, Org_Table.Org_Name, Org_Table.Org_Web, Venue_Table.Venue_address, Venue_Table.Venue_City, Venue_Table.Venue_Zip, 
                      Venue_Table.Venue_Name, Venue_Table.Venue_Phone, Venue_Table.Venue_Neighborhood, Event_Table.ticketLink,Event_Table.Child_Discount, Event_Table.Senior_Discount,Event_Table.Student_Discount
                FROM Venue_Table INNER JOIN (Org_Table INNER JOIN Event_Table ON Org_Table.Org_Num = Event_Table.Org_Num) ON Venue_Table.Venue_Name = Event_Table.Venue_Name 
           
                WHERE (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() }))  AND ((Event_Table.[#num#])=1))
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1)) OR (((Event_Table.ID2)=#disp_num#)
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.[#num#])=1))
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1))
                ORDER BY Event_Table.Date_Difference
                </cfquery>
                
                <cfset loop = 1>
                <cfset loop2 = 1>
                
                <!--- Query for the filters against the first query --->
                
                <cfquery  name="returnQuery"  dbtype="query"> 
                
                SELECT Event_Num, ID, ID2, Free_For_All, Date_Difference, Event_Phone, 
                      Event_Name, Event_Description, Ticket_String, Date_String, Time_String, 
                      Org_Num, Org_Name, Org_Web, Venue_address, Venue_City, Venue_Zip, 
                      Venue_Name, Venue_Phone, Venue_Neighborhood, ticketLink
                from baseQuery
                where
                 (
                <cfif music EQ 1>
                (id = 3 OR id2 = 3)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>
                
				<cfif dance EQ 1>
              	(id = 2 OR id2 = 2)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
                  
				  <cfif theater EQ 1>
              	(id = 1 OR id2 = 1)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
               
               <cfif literary EQ 1>
              	(id = 4 OR id2 = 4)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
               
               <cfif festival EQ 1>
              	(id = 5 OR id2 = 5)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
               
               <cfif film EQ 1>
              	(id = 6 OR id2 = 6)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
                
                 <cfif museum EQ 1>
              	(id = 7 OR id2 = 7)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
               
                <cfif gallery EQ 1>
              	(id = 8 OR id2 = 8)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
				
                 <cfif special EQ 1>
              	(id = 10 OR id2 = 10)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
                
                 <cfif web EQ 1>
              	(id = 12 OR id2 = 12)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
                )
                <cfif numberOfFilters GT 0>
                AND
						<cfif children EQ 1>
                        (id = 9 OR id2 = 9)
                        	<cfif loop2 LT numberOfFilters>
                            AND
                            <CFSET loop2 = loop2 + 1>
							</cfif>	
                        </cfif>
                        
                        <cfif free EQ 1>
                        (Ticket_String = 'Free')
                        	<cfif loop2 LT numberOfFilters>
                            AND
                            <CFSET loop2 = loop2 + 1>
							</cfif>	
                        </cfif>
						
                         <cfif ticketAvailable EQ 1>
                        	((ticketLink IS NOT NULL) AND (ticketLink <> ''))
                        	<cfif loop2 LT numberOfFilters>
                            AND
                            <CFSET loop2 = loop2 + 1>
							</cfif>	
                        </cfif>
                        
				</cfif>
                
                	               
                ;
                </cfquery>
                
		<cfreturn returnQuery>
	</cffunction>
  
   <cffunction name="getEventsByDateRangeWithParameters" access="remote" returntype="query">
    	<cfargument name="date1" type="date" required="yes">
        <cfargument name="date2" type="date" required="yes">
        <cfargument name="numberOfDisps" type="numeric" required="yes">
        <cfargument name="numberOfFilters" type="numeric" required="yes">
		<cfargument name="music" type="boolean" required="yes">	
        <cfargument name="dance" type="boolean" required="yes">	
        <cfargument name="theater" type="boolean" required="yes">	
        <cfargument name="literary" type="boolean" required="yes">
        <cfargument name="festival" type="boolean" required="yes">
        <cfargument name="film" type="boolean" required="yes">
        <cfargument name="museum" type="boolean" required="yes">
        <cfargument name="gallery" type="boolean" required="yes">
        <cfargument name="special" type="boolean" required="yes">
        <cfargument name="web" type="boolean" required="yes">
        <cfargument name="children" type="boolean" required="yes">
        <cfargument name="free" type="boolean" required="yes">
        <cfargument name="ticketAvailable" type="boolean" required="yes">
            
        <!--- Standard stored proc to get base set of events for date range --->  
          
            
        <cfstoredproc datasource="sfarts_CFX"  procedure="procGetEventRecordsForDateRange"> 
        <cfprocparam dbvarname="@date1" value="#date1#" cfsqltype="cf_sql_date">
        <cfprocparam dbvarname="@date2" value="#date2#" cfsqltype="cf_sql_date">
             <cfprocresult name="basequery">
        </cfstoredproc>
    	
    	 <!--- Query for the filters against the first query --->
                
                 <cfset loop = 1>
                 <cfset loop2 = 1>
                
                <cfquery  name="returnQuery"  dbtype="query"> 
                
                SELECT Event_Num, ID, ID2, Free_For_All, Date_Difference, Event_Phone, 
                      Event_Name, Event_Description, Ticket_String, Date_String, Time_String, 
                      Org_Num, Org_Name, Org_Web, Venue_address, Venue_City, Venue_Zip, 
                      Venue_Name, Venue_Phone, Venue_Neighborhood, ticketLink,Child_Discount, Senior_Discount,Student_Discount
                from baseQuery
                where
                (
                <cfif music EQ 1>
                (id = 3 OR id2 = 3)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>
                
				<cfif dance EQ 1>
              	(id = 2 OR id2 = 2)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
                  
				  <cfif theater EQ 1>
              	(id = 1 OR id2 = 1)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
               
               <cfif literary EQ 1>
              	(id = 4 OR id2 = 4)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
               
               <cfif festival EQ 1>
              	(id = 5 OR id2 = 5)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
               
               <cfif film EQ 1>
              	(id = 6 OR id2 = 6)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
                
                 <cfif museum EQ 1>
              	(id = 7 OR id2 = 7)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
               
                <cfif gallery EQ 1>
              	(id = 8 OR id2 = 8)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
				
                 <cfif special EQ 1>
              	(id = 10 OR id2 = 10)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
                
                 <cfif web EQ 1>
              	(id = 12 OR id2 = 12)
                	<cfif loop LT numberOfDisps>
                    OR
                    <CFSET loop = loop + 1>
                    </cfif>
                </cfif>  
                )
                <cfif numberOfFilters GT 0>
                AND
						<cfif children EQ 1>
                        (id = 9 OR id2 = 9)
                        	<cfif loop2 LT numberOfFilters>
                            AND
                            <CFSET loop2 = loop2 + 1>
							</cfif>	
                        </cfif>
                        
                        <cfif free EQ 1>
                        (Ticket_String = 'Free')
                        	<cfif loop2 LT numberOfFilters>
                            AND
                            <CFSET loop2 = loop2 + 1>
							</cfif>	
                        </cfif>
						
                         <cfif ticketAvailable EQ 1>
                        	((ticketLink IS NOT NULL) AND (ticketLink <> ''))
                        	<cfif loop2 LT numberOfFilters>
                            AND
                            <CFSET loop2 = loop2 + 1>
							</cfif>	
                        </cfif>
                        
				</cfif>
                
                	               
                ;
                </cfquery>
                
		<cfreturn returnQuery>    
        
    
  </cffunction>
  
  <!--- this is the main date query method --->
   <cffunction name="getMasterEventsByDate" access="remote" returntype="query">
    	<cfargument name="date1" type="date" required="yes">
        <cfargument name="date2" type="date" required="yes">
        
        <cfif date1 NEQ date2>
        
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetEventRecordsForDateRange"> 
            	<cfprocparam dbvarname="@date1" value="#date1#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@date2" value="#date2#" cfsqltype="cf_sql_date">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
      <cfreturn recordset1>getMasterEventsByDate
      <cfelse>
      	<!--- It is a query for a specific date --->
       <!--- set variables for use in the code below --->
         	<cfparam name="date_ahead" default="3">
			<cfparam name="day_string" default="Wednesday">
			<cfparam name="num" default="27">
			<cfparam name="disp_num" default="3">
			<CFSET today_date=#now()#>
            
            <!---  Calculate variables for date portion query  --->
       
            <CFSET future_date = date1>
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
            
            <cfquery name="baseQuery" datasource="sfarts_CFX">
               SELECT Event_Table.Event_Num, Event_Table.ID, Event_Table.ID2, Event_Table.Free_For_All, Event_Table.Date_Difference, Event_Table.Event_Phone, 
                      Event_Table.Event_Name, Event_Table.Event_Description, Event_Table.Ticket_String, Event_Table.Date_String, Event_Table.Time_String, 
                      Event_Table.Org_Num, Org_Table.Org_Name, Org_Table.Org_Web, Venue_Table.Venue_address, Venue_Table.Venue_City, Venue_Table.Venue_Zip, 
                      Venue_Table.Venue_Name, Venue_Table.Venue_Phone, Venue_Table.Venue_Neighborhood, Event_Table.ticketLink,Event_Table.Child_Discount, Event_Table.Senior_Discount,Event_Table.Student_Discount,Event_Table.TIXLink,Event_Table.TIXHalfPrice
                FROM Venue_Table INNER JOIN (Org_Table INNER JOIN Event_Table ON Org_Table.Org_Num = Event_Table.Org_Num) ON Venue_Table.Venue_Name = Event_Table.Venue_Name 
           
                WHERE (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() }))  AND ((Event_Table.[#num#])=1))
               
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1)) OR ((1=1)
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.[#num#])=1))
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1))
                ORDER BY [Date_Difference] ASC,[Event_Table].[Start_Date]
                </cfquery>
      	<cfreturn baseQuery>
      </cfif>
  </cffunction>
  

 
  
    <cffunction name="getEventsSetByDateRange" access="remote" returntype="query">
    	<cfargument name="date1" type="date" required="yes">
        <cfargument name="date2" type="date" required="yes">
        
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetEventRecordsForDateRange"> 
            	<cfprocparam dbvarname="@date1" value="#date1#" cfsqltype="cf_sql_date">
                <cfprocparam dbvarname="@date2" value="#date2#" cfsqltype="cf_sql_date">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
       
    <cfreturn recordset1>
  </cffunction>  
  
  
  
  
      <cffunction name="getEventByStringSearch" access="remote" returntype="query"> <!-- this is the verity search --->
    	<cfargument name="searchString" type="string" required="yes">
        	<CFSEARCH NAME="Search1" COLLECTION="SFarts_Collection_8"  CRITERIA="#LCase(searchString)#">   
    <cfreturn Search1>
  </cffunction>
  
  <!--- this is the master string search --->
     <cffunction name="getEventsBySimpleStringSearch" access="remote" returntype="query"> <!--- NO dates incolved --->
    	<cfargument name="searchString" type="string" required="yes">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procInsertStringSearchLog"> 
            	<cfprocparam dbvarname="@searchString" value="#searchString#" cfsqltype="cf_sql_varchar">
            </cfstoredproc>
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procSimpleSearchString"> 
            	<cfprocparam dbvarname="@searchString" value="#searchString#" cfsqltype="cf_sql_varchar">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
   <cffunction name="getEventById" access="remote" returntype="query"> <!--- NO dates incolved --->
    	<cfargument name="ID" type="numeric" required="yes">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetEventByEventID"> 
            	<cfprocparam dbvarname="@ID" value="#ID#" cfsqltype="cf_sql_integer">
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
   <cffunction name="getMasterEventsByDateAndStringSearch" access="remote" returntype="query">
    	<cfargument name="searchString" type="string" required="yes">
        <cfargument name="date1" type="date" required="yes">
        <cfargument name="date2" type="date" required="yes">
        
        <cfif date1 NEQ date2>
        
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procSimpleSearchStringWithDateRange"> 
            	<cfprocparam dbvarname="@searchString" value="#searchString#" cfsqltype="cf_sql_varchar">
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
            
            <!---  Calculate variables for date portion query  --->
       
            <CFSET future_date = date1>
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
            
            <cfquery name="baseQuery" datasource="sfarts_CFX">
               SELECT Event_Table.Event_Num, Event_Table.ID, Event_Table.ID2, Event_Table.Free_For_All, Event_Table.Date_Difference, Event_Table.Event_Phone, 
                      Event_Table.Event_Name, Event_Table.Event_Description, Event_Table.Ticket_String, Event_Table.Date_String, Event_Table.Time_String, 
                      Event_Table.Org_Num, Org_Table.Org_Name, Org_Table.Org_Web, Venue_Table.Venue_address, Venue_Table.Venue_City, Venue_Table.Venue_Zip, 
                      Venue_Table.Venue_Name, Venue_Table.Venue_Phone, Venue_Table.Venue_Neighborhood, Event_Table.ticketLink,Event_Table.Child_Discount, Event_Table.Senior_Discount,Event_Table.Student_Discount
                FROM Venue_Table INNER JOIN (Org_Table INNER JOIN Event_Table ON Org_Table.Org_Num = Event_Table.Org_Num) ON Venue_Table.Venue_Name = Event_Table.Venue_Name 
           
                WHERE ((((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() }))  AND ((Event_Table.[#num#])=1))
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1)) OR (((Event_Table.ID2)=#disp_num#)
                AND ((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.[#num#])=1))
                OR (((Event_Table.Start_Date)<=DATEADD(day,#date_ahead# , { fn CURDATE() }))
                AND ((Event_Table.End_Date)>=DATEADD(day,#date_ahead# , { fn CURDATE() })) AND ((Event_Table.#day_string#)=1)))
                AND ((Org_Table.Org_Name LIKE '%#searchstring#%') OR
                      (Event_Table.Event_Name LIKE '%#searchstring#%') OR
                      (Event_Table.Event_Description LIKE '%#searchstring#%'))
                ORDER BY Event_Table.Date_Difference
                </cfquery>
      	<cfreturn baseQuery>
      </cfif>
  </cffunction>
  
    <cffunction name="getEditorialContent" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procEditorialGetItems"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
   <cffunction name="getPodSubjects" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetPodSubjects"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
  <cffunction name="getPrintContent" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procGetPrintContent"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
   <cffunction name="getVideos" access="remote" returntype="query">
        	<cfstoredproc datasource="sfarts_CFX"  procedure="procVideoGetAll"> 
            	<cfprocresult name="recordset1">
            </cfstoredproc>
    <cfreturn recordset1>
  </cffunction>
  
</cfcomponent>