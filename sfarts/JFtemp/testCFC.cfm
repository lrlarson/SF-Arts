<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<cfinvoke 
 component="SFarts.JFtemp.sfarts"
 method="getEventBySpecificDate"
 returnvariable="queryReturn">
	<cfinvokeargument name="month" value="4"/>
	<cfinvokeargument name="year" value="2008"/>
	<cfinvokeargument name="day" value="10"/>
	<cfinvokeargument name="disp" value="Music"/>
</cfinvoke>


</head>

<body>
<cfdump var="#queryReturn#" expand="yes">
</body>
</html>
