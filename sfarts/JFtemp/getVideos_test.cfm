<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<cfinvoke 
 webservice="http://38.96.178.90/sfarts/jftemp/sfarts.cfc?wsdl"
 method="getVideos"
 returnvariable="aQuery">
</cfinvoke>



</head>

<body>

<cfdump var="#aQuery#" expand="yes">
</body>
</html>