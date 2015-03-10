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
  <div align="center">
    <p><b>Select the beginning and ending dates as well as the 
      discipline. Events that begin or continue through those dates will be returned</b></p>
    <p>THIS FORM RETURNS XML DATA</p>
    <p>COPY THE RETURNED DATA, PASTE IT INTO A PLAIN TEXT EDITOR, AND SAVE TO A FILE with an .XML EXTENSION</p>
  </div>
</CFOUTPUT>
<!--DANCE FORM -->
<p>&nbsp;</p>
<p align="center">Quick links to the disciplines:</p>
<p align="center"><a href="#Dance">Dance</a></p>
<p align="center"><a href="#Festivals">Festivals</a></p>
<p align="center"><a href="#Film">Film</a></p>
<p align="center"><a href="#Literary_Arts">Literary Arts</a></p>
<p align="center"><a href="#Music">Music All</a> <a href="#Music_Single_Events">Music:SINGLE 
  Events</a> <a href="#Music_Multiple_Events">Music: MULTIPLE Events</a></p>
<p align="center"><a href="#Museums">Museums</a></p>
<p align="center"><a href="#Galleries">Galleries</a></p>
<p align="center"><a href="#Theater_All">Theater ALL EVENTS</a> <a href="#Theater_Continuing">Theater 
  CONTINUING</a> <a href="#Theater_New">Theater NEW</a></p>
<p align="center">&nbsp;</p>
<hr>
<p align="center">&nbsp;</p>
<form name="form1" method="post" action="Dance_XML.cfm">
  <p align="center"><b><font size="4">DANCE <a name="Dance"></a></font></b>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year        <select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year       <select name="end_year"><option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option></select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <p align="center">&nbsp;</p>
</form>
<HR>
<!--Festivals Form -->
<form name="form1" method="post" action="Festival_XML.cfm">
  <p align="center"><b><font size="4">Festivals</font></b> <a name="Festivals"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="end_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <p align="center">&nbsp;</p>
</form>
<!--FILM FORM -->
<form name="form1" method="post" action="Film_XML.cfm">
  <hr>
  <p align="center">
  <p align="center"><b><font size="4">Film</font></b> <a name="Film"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year   <select name="begin_year"><option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>


Month <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year       <select name="end_year">

<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>

</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<!--Literary Arts -->
<form name="form1" method="post" action="Lit_XML.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Literary Arts</font></b> <a name="Literary_Arts"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year  <select name="begin_year">

<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option></select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year       <select name="end_year"><option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option></select>

</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<!--Music -->
<form name="form1" method="post" action="Music_XML.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Music</font></b> (all events) <a name="Music"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year      <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <p align="center">&nbsp;</p>
</form>
<!--Music Single Events -->
<hr>
<form name="form1" method="post" action="Music_Single_XML.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Music</font></b> (single events) <a name="Music_Single_Events"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year      <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<!--Music -- Multiple Events -->
<form name="form1" method="post" action="Music_Multiple_XML.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Music</font></b> (Multiple Events) <a name="Music_Multiple_Events"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year      <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<!--Museums -->
<form name="form1" method="post" action="Museum_XML.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Museums</font></b> <a name="Museums"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year  <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>

</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<form name="form1" method="post" action="Galleries_XML.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Galleries</font></b> <a name="Galleries"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year       <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<!--Theater All -->
<form name="form1" method="post" action="Theater_XML.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Theater ALL</font></b> <a name="Theater_All"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year      <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<!--Theater Continuing -->
<form name="form1" method="post" action="Theater_Continue_XML.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Theater CONTINUING</font></b> <a name="Theater_Continuing"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year     <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<!--Theater New -->
<form name="form1" method="post" action="Theater_New_XML.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Theater NEW</font></b> <a name="Theater_New"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>



Month  <select name="end_month">
 <option value="1" <CFIF #month_num# EQ 1> selected </CFIF>>January</option>
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

Year  <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" >2013</option>
</select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<p>&nbsp;</p>
</body>
</html>