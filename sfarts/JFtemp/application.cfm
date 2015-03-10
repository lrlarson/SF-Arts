<cfapplication  name="CARMA" sessionmanagement="yes" setclientcookies="yes" sessionTimeOut = #createtimespan(0,0,59,0)#/>
<cfset session.TEST = "hello">
