<html>
<head>
<title>Quark Request</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<CFSET today_date=#now()#>
</head>

<body bgcolor="#FFFFFF" text="#000000">
<CFOUTPUT> 
  <div align="center">
    <CFSET month_num = #Dateformat(today_date,"mm")#>
    <CFSET day_num = #Dateformat(today_date,"dd")#>
    <!--You must define today_date in the head!!!! using -->
  </div>
  <div align="center"><b>Select the beginning and ending dates as well as the 
    discipline. Events that begin or continue through those dates will be returned</b></div>
</CFOUTPUT> 
<form name="form1" method="post" action="Quark_import.cfm">
  <p align="center">&nbsp; 
  <div align="center"> 
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>February</option>
<option value="2" <CFIF #month_num# EQ 2> selected </CFIF>>February</option>
<option value="3" <CFIF #month_num# EQ 3> selected </CFIF>>March</option>
<option value="4" <CFIF #month_num# EQ 4> selected </CFIF>>April</option>
<option value="5" <CFIF #month_num# EQ 5> selected </CFIF>>May</option>
<option value="6" <CFIF #month_num# EQ 6> selected </CFIF>>June</option>
<option value="7" <CFIF #month_num# EQ 7> selected </CFIF>>July</option>
<option value="8" <CFIF #month_num# EQ 8> selected </CFIF>>August</option>
<option value="9" <CFIF #month_num# EQ 9> selected </CFIF>>September</option>
<option value="10" <CFIF #month_num# EQ 10> selected </CFIF>>October</option>
<option value="11" <CFIF #month_num# EQ 11> selected </CFIF>>November</option>
<option value="12" <CFIF #month_num# EQ 12> selected </CFIF>>December</option>
</select>

Day         <select name="begin_day">
<option value="1"<CFIF #day_num# EQ 1> selected </CFIF>>1</option>
<option value="2"<CFIF #day_num# EQ 2> selected </CFIF>>2</option>
<option value="3"<CFIF #day_num# EQ 3> selected </CFIF>>3</option>
<option value="4"<CFIF #day_num# EQ 4> selected </CFIF>>4</option>
<option value="5"<CFIF #day_num# EQ 5> selected </CFIF>>5</option>
<option value="6"<CFIF #day_num# EQ 6> selected </CFIF>>6</option>
<option value="7"<CFIF #day_num# EQ 7> selected </CFIF>>7</option>
<option value="8"<CFIF #day_num# EQ 8> selected </CFIF>>8</option>
<option value="9"<CFIF #day_num# EQ 9> selected </CFIF>>9</option>
<option value="10"<CFIF #day_num# EQ 10> selected </CFIF>>10</option>
<option value="11"<CFIF #day_num# EQ 11> selected </CFIF>>11</option>
<option value="12"<CFIF #day_num# EQ 12> selected </CFIF>>12</option>
<option value="13"<CFIF #day_num# EQ 13> selected </CFIF>>13</option>
<option value="14"<CFIF #day_num# EQ 14> selected </CFIF>>14</option>
<option value="15"<CFIF #day_num# EQ 15> selected </CFIF>>15</option>
<option value="16"<CFIF #day_num# EQ 16> selected </CFIF>>16</option>
<option value="17"<CFIF #day_num# EQ 17> selected </CFIF>>17</option>
<option value="18"<CFIF #day_num# EQ 18> selected </CFIF>>18</option>
<option value="19"<CFIF #day_num# EQ 19> selected </CFIF>>19</option>
<option value="20"<CFIF #day_num# EQ 20> selected </CFIF>>20</option>
<option value="21"<CFIF #day_num# EQ 21> selected </CFIF>>21</option>
<option value="22"<CFIF #day_num# EQ 22> selected </CFIF>>22</option>
<option value="23"<CFIF #day_num# EQ 23> selected </CFIF>>23</option>
<option value="24"<CFIF #day_num# EQ 24> selected </CFIF>>24</option>
<option value="25"<CFIF #day_num# EQ 25> selected </CFIF>>25</option>
<option value="26"<CFIF #day_num# EQ 26> selected </CFIF>>26</option>
<option value="27"<CFIF #day_num# EQ 27> selected </CFIF>>27</option>
<option value="28"<CFIF #day_num# EQ 28> selected </CFIF>>28</option>
<option value="29"<CFIF #day_num# EQ 29> selected </CFIF>>29</option>
<option value="30"<CFIF #day_num# EQ 30> selected </CFIF>>30</option>
<option value="31"<CFIF #day_num# EQ 31> selected </CFIF>>31</option>
</select>

Year       <select name="begin_year"><option value="2001" selected>2001</option><option value="2002">2002</option><option value="2003">2003</option></select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>February</option>
<option value="2" <CFIF #month_num# EQ 2> selected </CFIF>>February</option>
<option value="3" <CFIF #month_num# EQ 3> selected </CFIF>>March</option>
<option value="4" <CFIF #month_num# EQ 4> selected </CFIF>>April</option>
<option value="5" <CFIF #month_num# EQ 5> selected </CFIF>>May</option>
<option value="6" <CFIF #month_num# EQ 6> selected </CFIF>>June</option>
<option value="7" <CFIF #month_num# EQ 7> selected </CFIF>>July</option>
<option value="8" <CFIF #month_num# EQ 8> selected </CFIF>>August</option>
<option value="9" <CFIF #month_num# EQ 9> selected </CFIF>>September</option>
<option value="10" <CFIF #month_num# EQ 10> selected </CFIF>>October</option>
<option value="11" <CFIF #month_num# EQ 11> selected </CFIF>>November</option>
<option value="12" <CFIF #month_num# EQ 12> selected </CFIF>>December</option>
</select>
  
Day         <select name="end_day">
<option value="1"<CFIF #day_num# EQ 1> selected </CFIF>>1</option>
<option value="2"<CFIF #day_num# EQ 2> selected </CFIF>>2</option>
<option value="3"<CFIF #day_num# EQ 3> selected </CFIF>>3</option>
<option value="4"<CFIF #day_num# EQ 4> selected </CFIF>>4</option>
<option value="5"<CFIF #day_num# EQ 5> selected </CFIF>>5</option>
<option value="6"<CFIF #day_num# EQ 6> selected </CFIF>>6</option>
<option value="7"<CFIF #day_num# EQ 7> selected </CFIF>>7</option>
<option value="8"<CFIF #day_num# EQ 8> selected </CFIF>>8</option>
<option value="9"<CFIF #day_num# EQ 9> selected </CFIF>>9</option>
<option value="10"<CFIF #day_num# EQ 10> selected </CFIF>>10</option>
<option value="11"<CFIF #day_num# EQ 11> selected </CFIF>>11</option>
<option value="12"<CFIF #day_num# EQ 12> selected </CFIF>>12</option>
<option value="13"<CFIF #day_num# EQ 13> selected </CFIF>>13</option>
<option value="14"<CFIF #day_num# EQ 14> selected </CFIF>>14</option>
<option value="15"<CFIF #day_num# EQ 15> selected </CFIF>>15</option>
<option value="16"<CFIF #day_num# EQ 16> selected </CFIF>>16</option>
<option value="17"<CFIF #day_num# EQ 17> selected </CFIF>>17</option>
<option value="18"<CFIF #day_num# EQ 18> selected </CFIF>>18</option>
<option value="19"<CFIF #day_num# EQ 19> selected </CFIF>>19</option>
<option value="20"<CFIF #day_num# EQ 20> selected </CFIF>>20</option>
<option value="21"<CFIF #day_num# EQ 21> selected </CFIF>>21</option>
<option value="22"<CFIF #day_num# EQ 22> selected </CFIF>>22</option>
<option value="23"<CFIF #day_num# EQ 23> selected </CFIF>>23</option>
<option value="24"<CFIF #day_num# EQ 24> selected </CFIF>>24</option>
<option value="25"<CFIF #day_num# EQ 25> selected </CFIF>>25</option>
<option value="26"<CFIF #day_num# EQ 26> selected </CFIF>>26</option>
<option value="27"<CFIF #day_num# EQ 27> selected </CFIF>>27</option>
<option value="28"<CFIF #day_num# EQ 28> selected </CFIF>>28</option>
<option value="29"<CFIF #day_num# EQ 29> selected </CFIF>>29</option>
<option value="30"<CFIF #day_num# EQ 30> selected </CFIF>>30</option>
<option value="31"<CFIF #day_num# EQ 31> selected </CFIF>>31</option>
</select>

Year       <select name="end_year"><option value="2001" selected>2001</option><option value="2002">2002</option><option value="2003">2003</option></select>


Select Discipline <select name="disp"><option value="3">Music</option><option value="1">Theater</option><option value="2">Dance</option><option value="4">Literary Arts</option><option value="5">Festivals</option><option value="6">Film/Video</option><option value="7">Museums</option><option value="8">Galleries</option><option value="9">Events for Children</option><option value="10">Special Events</option></select></pre>
  </div>
  <p align="center"> 
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <p align="center">&nbsp;</p>
</form>
</body>
</html>
