<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name ="title" content="San Francisco Arts Monthly">
    <meta name="description" content="A monthly magazine featuring the most comprehensive listing of arts and cultural events in San Francisco">
    <title>San Francisco Arts Events And Listings Calendar and Guide</title>

    <link rel="stylesheet" type="text/css" href="css/reset.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/text.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/grid.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/layout.css" media="screen" />
    
<cfparam name="dispstring" default="Museums">
<cfparam name="id" default="40000">   
 
<CFSTOREDPROC procedure="dbo.[procRSSGetEventDataByEventNum]" datasource="sfarts_CFX">
  <CFPROCPARAM type="IN" dbvarname="@id" value="#id#" cfsqltype="cf_sql_integer">
  <CFPROCRESULT name="rsEventData">
</CFSTOREDPROC>

<cfscript>
	dispstring = #rsEventData.discipline#;
</cfscript>

<CFSTOREDPROC procedure="dbo.procEditorialGetItems_RSS" datasource="sfarts_CFX">
  <CFPROCPARAM type="IN" dbvarname="@dispstring" value="#dispstring#" cfsqltype="CF_SQL_VARCHAR">
  <CFPROCRESULT name="rsPodStories">
</CFSTOREDPROC>
</head>
  <body>
    <div class="container_12">
      
      <div class="grid_12"><div id="branding"><a href="http://www.sfarts.org"><img src="img/sfarts_logo.jpg" alt="SFArts.org" width="388" height="58" /></a></div>
      </div>
      
      <div class="clear"></div>
      
      <div class="grid_12">
      <cfoutput>
        <h2 id="page-heading">#dispstring# Event</h2>
        </cfoutput>
      </div>
      
      <div class="clear"></div>
      
      <div class="grid_8">
      
        <div class="box">
        
        <a href="#" class="image"><cfoutput></cfoutput></a>
        		<cfoutput>
                <h4>#rsEventData.Event_Name#</h4>
                <h5> #rsEventData.Org_Name#</h5>
                <p>#rsEventData.Event_Description# </p>
                <!---
          <p class="cite"><cite>#rsEventData.curatedBy#</cite></p>
		  
		  --->
          </cfoutput>
          
        </div>
        <div class="box">
          <h2>Event Details</h2>
          <div class="block">
          <cfoutput>
              <table>
                <tfoot>
                </tfoot>
                <tbody>
                  <tr class="odd">
                    <th width="23%"><strong>Date</strong></th>
                    <td width="77%">#rsEventData.Date_String#</td>
                  </tr>
                  <tr>
                    <th><strong>Location</strong></th>
                    <td>#rsEventData.Venue_Name#</td>
                  </tr>
                  <tr class="odd">
                    <th><strong>Event Description</strong></th>
                    <td>#rsEventData.Event_Description#</td>
                  </tr>
                  <tr>
                    <th class="price"><strong>Price</strong></th>
                    <td class="price"><strong>#rsEventData.Ticket_String#</strong></td>
                  </tr>
                  <cfif rsEventData.ticketLink NEQ ''>
                  <tr class="odd">
                    <th class="price"><strong>Ticket Link</strong></th>
                    <td class="price"><a href="#rsEventData.ticketLink#"><strong>#rsEventData.ticketLink#</strong></a></td>
                  </tr>
                  </cfif>
                </tbody>
              </table>
              </cfoutput>
              </div>
        </div>
      </div>
      <div class="grid_4">
      
        <div class="box articles">
        <cfoutput>
          <h2>Other Featured #dispstring# Events</h2>
         </cfoutput> 
          <div class="block" id="articles">
          <cfoutput query="rsPodStories">
            <div class="article">
              <h4><a href="rssStory.cfm?dispString=#dispstring#&id=#event#">#title#</a></h4>
            </div>
            </cfoutput>
          </div>
        </div>
      </div>
      <div class="clear"></div>
      <div class="grid_12" id="site_info">
        <div class="box">
          <p>&copy; 2011 <a href="http://www.sfarts.org">SFArts.org</a>. All rights reserved.</p>
        </div>
      </div>
      <div class="clear"></div>
    </div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-3368302-2");
pageTracker._trackPageview();
} catch(err) {}
</script>
<!--VISISTAT SNIPPET//-->
<script type="text/javascript">
var DID=12737;
var pcheck=(window.location.protocol == "https:") ? "https://sniff.visistat.com/live.js":"http://stats.visistat.com/live.js";
document.writeln('<scr'+'ipt src="'+pcheck+'" type="text\/javascript"><\/scr'+'ipt>');
</script>
<!--VISISTAT SNIPPET//-->

  </body>
</html>