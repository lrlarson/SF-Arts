<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>


<cfinvoke 
 component="SFarts.JFtemp.sfarts"
 method="getEventsSpecificDateWithParameters"
 returnvariable="getEventsSpecificDateWithParametersRet">
	<cfinvokeargument name="date1" value="5/2/08"/>
	<cfinvokeargument name="numberOfDisps" value="4"/>
	<cfinvokeargument name="numberOfFilters" value="2"/>
	<cfinvokeargument name="music" value="1"/>
	<cfinvokeargument name="dance" value="0"/>
	<cfinvokeargument name="theater" value="1"/>
	<cfinvokeargument name="literary" value="0"/>
	<cfinvokeargument name="festival" value="1"/>
	<cfinvokeargument name="film" value="0"/>
	<cfinvokeargument name="museum" value="1"/>
	<cfinvokeargument name="gallery" value="0"/>
	<cfinvokeargument name="special" value="0"/>
	<cfinvokeargument name="web" value="0"/>
	<cfinvokeargument name="children" value="1"/>
	<cfinvokeargument name="free" value="1"/>
    <cfinvokeargument name="ticketAvailable" value="0"/>
</cfinvoke>




</head>

<body>

<cfdump expand="yes" var="#getEventsSpecificDateWithParametersRet#">

</body>
</html>
