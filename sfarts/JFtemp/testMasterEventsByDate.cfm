<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<cfinvoke 
 component="SFarts.JFtemp.sfarts"
 method="getMasterEventsByDate"
 returnvariable="getMasterEventsByDateRet">
	<cfinvokeargument name="date1" value="11/15/2008"/>
	<cfinvokeargument name="date2" value="11/15/2008"/>
</cfinvoke>




</head>

<body>

<cfdump expand="yes" var="#getMasterEventsByDateRet#">

</body>
</html>
