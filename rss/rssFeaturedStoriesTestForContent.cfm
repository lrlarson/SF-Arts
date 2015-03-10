


<!--- META DATA --->

<cfset meta = structNew()>
<cfset meta.title = "SFArts Featured Events Feed -- ">
<cfset meta.link = "http://www.sfarts.org">
<cfset meta.description = "Current Featured  Events">
<cfset meta.version = "rss_2.0">

<!--- get pod data --->

<CFSTOREDPROC procedure="dbo.procEditorialGetItemsALL_RSS" datasource="sfarts_CFX">
  <CFPROCRESULT name="rsPodStories">
</CFSTOREDPROC>

<!--- clean up bad stuff --->
<cfloop query="rsPodStories">
<cfset fixedcontent = replaceList(storyText, "#chr(25)#,#chr(212)#,#chr(248)#,#chr(937)#,#chr(8211)#", "")>
<cfset fixedcontent = replaceList(fixedcontent,chr(8216) & "," & chr(8217) & "," & chr(8220) & "," & chr(8221) & "," & chr(8212) & "," & chr(8213) & "," & chr(8230),"',',"","",--,--,...")>
<cfset fixedcontent = replacelist(fixedcontent,chr(225),"a")>
<cfset fixedcontent = replacelist(fixedcontent,chr(233),"a")>
<cfset fixedcontent = replacelist(fixedcontent,chr(161),"")>
<cfset querySetCell(rsPodStories, "storyText", #XmlFormat(fixedcontent)#, currentRow)>


<cfset fixedcontent2 = replaceList(title, "#chr(25)#,#chr(212)#,#chr(248)#,#chr(937)#,#chr(8211)#", "")>
<cfset fixedcontent2 = replaceList(fixedcontent2,chr(8216) & "," & chr(8217) & "," & chr(8220) & "," & chr(8221) & "," & chr(8212) & "," & chr(8213) & "," & chr(8230),"',',"","",--,--,...")>
<cfset fixedcontent2 = replacelist(fixedcontent2,chr(225),"a")>
<cfset fixedcontent2 = replacelist(fixedcontent2,chr(233),"a")>
<cfset fixedcontent = replacelist(fixedcontent,chr(161),"")>

<cfset querySetCell(rsPodStories, "title", #XmlFormat(fixedcontent2)#, currentRow)>
</cfloop>

<!--- add rss link --->
<cfset queryAddColumn(rsPodStories,"rsslink",arrayNew(1))>
<cfloop query="rsPodStories">
<cfset querySetCell(rsPodStories,"rsslink","http://www.sfarts.org/rss/rssstory.cfm?id=#id#&dispstring=#dispString#",currentRow)>
</cfloop>

<!--- Map from query to RSS Columns --->

<cfset cmap = structNew()>
<cfset cmap.publisheddate = "INSERTDATE">
<cfset cmap.title = "TITLE">
<cfset cmap.content = "STORYTEXT">

<!--- prepare the feed ---->

<cffeed action = "create" properties = "#meta#" query = "#rsPodStories#" columnMap = "#cmap#" xmlVar = "feedXML">

<cfcontent type="text/xml" reset="true">

<cfoutput> #feedXML# </cfoutput>
