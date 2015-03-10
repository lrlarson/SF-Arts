<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
<cfquery datasource="sfarts_CFX" name="delete">
delete from tbl_travelArticles
</cfquery>

<cfquery datasource="sfarts_cfx" name="articles">
SELECT * FROM viewTravelTheater
UNION
SELECT * FROM viewTravelDance
UNION
SELECT * FROM viewTravelMusic
UNION
SELECT * FROM viewTravelLiterary
UNION
SELECT * FROM viewTravelFestivals
UNION
SELECT * FROM viewTravelFilmVideo
UNION
SELECT * FROM viewTravelMuseums
UNION
SELECT * FROM viewTravelGalleries
UNION
SELECT * FROM viewTravelChildren
UNION
SELECT * FROM viewTravelMoreForLess
</cfquery>


</head>

<body>
<!---
<cfdump var="#articles#">
--->

<cfoutput query="articles">
<cfquery datasource="sfarts_CFX" name="insert">
insert into tbl_travelArticles
(datestring,discipline,disp,editorial,eventID,eventname,imagepath,title)
values
('#datestring#',#discipline#,'#disp#','#editorial#',#eventID#,'#eventname#','#imagepath#','#title#')
</cfquery>
</cfoutput>

<cfmail to="lrlarson@mac.com" from="lrlarson@gmail.com" subject="new pod stories set for SFtravel">
<cfloop query="articles">
#datestring#,#discipline#,#disp#,#editorial#,#eventID#,#eventname#,#imagepath#,#title# <br />
</cfloop>

</cfmail>
</body>
</html>