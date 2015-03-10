<cfinclude template="../Connections/CONNsfarts.cfm"> 
<cfparam name="begin_add" default="15">
<cfparam name="end_add" default="45">

<CFSET today_date=#NOW()#>
<CFPARAM NAME="form.begin_month" DEFAULT="7">
<CFPARAM NAME="form.begin_year" DEFAULT="2001">
<CFPARAM NAME="form.begin_day" DEFAULT="1">
<CFPARAM NAME="form.end_month" DEFAULT="7">
<CFPARAM NAME="form.end_year" DEFAULT="2001">
<CFPARAM NAME="form.end_day" DEFAULT="31">
<CFSET begin_date = CreateDate(form.begin_year, form.begin_month, form.begin_day)>
<CFSET type="d">
<CFSET begin_add=#Abs(DateDiff(type, begin_date, today_date))#+1>
<CFIF #Dateformat(today_date)# EQ #Dateformat(begin_date)#>
<CFSET begin_add=#Abs(DateDiff(type, begin_date, today_date))#>
</CFIF>
<CFSET end_date = CreateDate(form.end_year, form.end_month, form.end_day)>
<CFSET type="d">
<CFSET end_add=#Abs(DateDiff(type, end_date, today_date))#+1>
<CFIF #Dateformat(today_date)# EQ #Dateformat(end_date)#>
<CFSET end_add=#Abs(DateDiff(type, end_date, today_date))#>
</CFIF>
<cfparam name="Recordset1__begin_add" default="#begin_add#">
<cfparam name="Recordset1__end_add" default="#end_add#">

<cfquery name="Recordset1" datasource="sfarts_CFX">
SELECT Event_Table.Event_Name, Venue_Table.Venue_Name, Venue_Table.Venue_address, 
Event_Table.Event_Phone, Event_Table.Date_String, Event_Table.Time_String, Event_Table.Ticket_String, 
Event_Table.Event_Description FROM Venue_Table INNER JOIN (Org_Table INNER JOIN 
([Discipline List] INNER JOIN Event_Table ON [Discipline List].ID = Event_Table.ID) 
ON Org_Table.Org_Num = Event_Table.Org_Num) ON Venue_Table.ID = Event_Table.venueID WHERE (((Event_Table.Start_Date)<=({ fn NOW() }+#Recordset1__begin_add#)) AND ((Event_Table.End_Date)>=({ fn NOW() }+#Recordset1__end_add#))) 
OR (((Event_Table.Start_Date) Between ({ fn NOW() }+#Recordset1__begin_add#) And ({ fn NOW() }+#Recordset1__end_add#))) 
ORDER BY [Discipline List].Discipline, Event_Table.Start_Date; 
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

<CFOUTPUT> begin_date = #begin_date#
		begin_add = #begin_add#
</CFOUTPUT>
<cfoutput query="Recordset1"> 
  <table width="75%" border="1">
    <tr> 
      <td> 
        <p class="Body_Head">#Recordset1.Event_Name#</p>
        <p>#Recordset1.Venue_Name#</p>
        <p>#Recordset1.Venue_address#, #Recordset1.Event_Phone#</p>
        <p>#Recordset1.Date_String#: #Recordset1.Time_String# </p>
        <p>#Recordset1.Ticket_String#</p>
        <p>#Recordset1.Event_Description#</p>
      </td>
    </tr>
  </table>
</cfoutput>
</body>
</html>

