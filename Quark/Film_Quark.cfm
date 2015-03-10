<cfinclude template="../Connections/CONNsfarts.cfm"> 
<cfparam name="begin_add" default="4">
<cfparam name="end_add" default="35">

<CFSET today_date=#NOW()#>
<CFPARAM NAME="form.begin_month" DEFAULT="7">
<CFPARAM NAME="form.begin_year" DEFAULT="2001">
<CFPARAM NAME="form.begin_day" DEFAULT="1">
<CFPARAM NAME="form.end_month" DEFAULT="7">
<CFPARAM NAME="form.end_year" DEFAULT="2001">
<CFPARAM NAME="form.end_day" DEFAULT="31">
<CFPARAM NAME="form.disp" DEFAULT="6">

<CFSET begin_date = CreateDate(form.begin_year, form.begin_month, form.begin_day)>
<CFSET type="d">
<CFSET begin_add=#Abs(DateDiff(type, begin_date, today_date))#>
	<CFIF #Dateformat(today_date)# EQ #Dateformat(begin_date)#>
	<CFSET begin_add=#Abs(DateDiff(type, begin_date, today_date))#+1>
	</CFIF>
	
<CFSET end_date = CreateDate(form.end_year, form.end_month, form.end_day)>
<CFSET end_add=#Abs(DateDiff(type, end_date, today_date))#+1>
	<CFIF #Dateformat(today_date)# EQ #Dateformat(end_date)#>
	<CFSET end_add=#Abs(DateDiff(type, end_date, today_date))#+1>
	</CFIF>
	
<cfparam name="Recordset1__begin_add" default="#begin_add#">
<cfparam name="Recordset1__end_add" default="#end_add#">
<cfparam name="Recordset1__disp_num" default="#Form.disp#">

<cfquery name="Recordset1" datasource="sfarts_CFX">
SELECT Event_Table.Event_Name, Venue_Table.Venue_Name, Org_Table.Org_Web,Event_Table.ID,Event_Table.ID2,Venue_Table.Venue_address,org_table.org_name,  
Event_Table.Event_Phone, Event_Table.Date_String, Event_Table.Time_String, Event_Table.Ticket_String, 
Event_Table.Event_Description FROM Venue_Table INNER JOIN (Org_Table INNER JOIN 
([Discipline List] INNER JOIN Event_Table ON [Discipline List].ID = Event_Table.ID) 
ON Org_Table.Org_Num = Event_Table.Org_Num) ON Venue_Table.ID = Event_Table.venueID WHERE ((((Event_Table.Start_Date)<=(dbo.getPacificDateTime()+#Recordset1__begin_add#))AND((Event_Table.End_Date)>=(dbo.getPacificDateTime()+#Recordset1__begin_add#)))AND 
Event_Table.ID=#Recordset1__disp_num#) OR ((((Event_Table.Start_Date) Between 
(dbo.getPacificDateTime()+#Recordset1__begin_add#) AND(dbo.getPacificDateTime()+#Recordset1__end_add#)))AND Event_Table.ID=#Recordset1__disp_num#) 
ORDER BY Event_Table.Venue_Name,Event_Table.Start_Date;
</cfquery>
<cfscript>
Recordset1_NumRows = Recordset1.RecordCount;
</cfscript>
<html>
<head>
<title>Quark</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="quark.css" type="text/css">
</head>
<body bgcolor="#FFFFFF" text="#000000">
!---<CFOUTPUT><p>begin_date = #begin_date# begin_add = #Recordset1__begin_add# End Date = #end_date# End Add =#Recordset1__end_add# </p>
  <p>&nbsp;</p>
  Disp = #Recordset1__disp_num# </CFOUTPUT> <cfoutput query="Recordset1"> 
  <table width="75%" border="1">
    <tr> 
      <td> 
        <p class="Body_Head">#Recordset1.Venue_Name#, #Recordset1.Org_Name#</p>
        <p class="Body_Head">&nbsp;</p>
        <p class="Body_Head">#Recordset1.Event_Name#</p>
        <p class="Body_Head">&nbsp;</p>
        <p class="body_address">#Recordset1.Venue_address#, #Recordset1.Event_Phone#</p>
        <p class="body_address">#Recordset1.Org_Web#</p>
        <p class="body_address"><span class="body_address">#Recordset1.Date_String#</span>;&nbsp;#Recordset1.Time_String# </p>
        <p class="body_address_last">#Recordset1.Ticket_String#</p>
        <p class="body">#Recordset1.Event_Description#</p>
      </td>
    </tr>
  </table>
</cfoutput> --->
<!--- Create an XML document object containing the data ---> 
<cfxml variable="dispEvents"> 
    <dispEvents> 
        <cfoutput query="Recordset1"> 
             <event>  
               <Org_Name><![CDATA[#Org_Name#]]> </Org_Name>
                <Venue_Name><![CDATA[#Venue_Name#]]> </Venue_Name>
                <Venue_address><![CDATA[#Venue_address#]]> </Venue_address>
         		<Event_Phone><![CDATA[#Event_Phone#]]> </Event_Phone>
         		<Org_Web><![CDATA[#Org_Web#]]> </Org_Web>
                <Date_String><![CDATA[#Date_String#]]> </Date_String>
                 <Time_String><![CDATA[#Time_String#]]> </Time_String>
                <Event_Name><![CDATA[#Event_Name#]]> </Event_Name>
                  <Event_Description><![CDATA[#Event_Description#]]> </Event_Description>
                 <Ticket_String><![CDATA[#Ticket_String#]]> </Ticket_String>
          	</event>
        </cfoutput> 
    </dispEvents> 
</cfxml> 
</head> 
<!--- dump the resulting XML document object ---> 
<!---<cfdump var=#musicEvents#> --->
<!--- Write the XML to a file ---> 
<cfdump var="#toString(dispEvents)#">
</body>
</html>
</body>
</html>




