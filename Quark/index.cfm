<html>
<head>
<title>Quark Request</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<CFSET today_date=#now()#>
</head>
<body bgcolor="#FFFFFF" text="#000000">
<script src="http://code.jquery.com/jquery-latest.min.js"
        type="text/javascript"></script>

<script type="text/javascript" src="date.js"></script>
<CFOUTPUT>
  <div align="center">
    <CFSET month_num = #Dateformat(today_date,"mm")#>
    <CFSET day_num = #Dateformat(today_date,"dd")#>
    <!--You must define today_date in the head!!!! using -->
  </div>
  <div align="center"><b>Select the beginning and ending dates as well as the 
    discipline. Events that begin or continue through those dates will be returned</b></div>
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
<form name="form1" method="post" action="Dance_Quark.cfm">
  <p align="center"><b><font size="4">DANCE <a name="Dance"></a></font></b>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year        <select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
</select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>

  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year       <select name="end_year"><option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option></select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <p align="center">&nbsp;</p>
</form>
<HR>
<!--Festivals Form -->
<form name="form1" method="post" action="Festival_Quark.cfm">
  <p align="center"><b><font size="4">Festivals</font></b> <a name="Festivals"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011">2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option><option value="2014" >2014</option>
</select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="end_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013"selected>2013</option>
</select>


</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <p align="center">&nbsp;</p>
</form>
<!--FILM FORM -->
<form name="form1" method="post" action="Film_Quark.cfm">
  <hr>
  <p align="center">
  <p align="center"><b><font size="4">Film</font></b> <a name="Film"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year   <select name="begin_year"><option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option><option value="2014" >2014</option>
</select>


Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year       <select name="end_year">

<option value="2010" >2010</option>
<option value="2011">2011</option>
<option value="2012" >2012</option>
<option value="2013"selected >2013</option>
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
<form name="form1" method="post" action="Literary_Arts_Quark.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Literary Arts</font></b> <a name="Literary_Arts"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year  <select name="begin_year">

<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option><option value="2014" >2014</option></select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year       <select name="end_year"><option value="2010" >2010</option>
<option value="2011"selected>2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option></select>

</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<!--Music -->
<form name="form1" method="post" action="Music_Quark.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Music</font></b> (all events) <a name="Music"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011">2011</option>
<option value="2012" >2012</option>
<option value="2013"selected >2013</option>
</select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year      <select name="end_year">
<option value="2010" >2010</option>
<option value="2011">2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
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
<form name="form1" method="post" action="Music_Single_Quark.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Music</font></b> (single events) <a name="Music_Single_Events"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
</select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year      <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
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
<form name="form1" method="post" action="Music_Multiple_Quark.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Music</font></b> (Multiple Events) <a name="Music_Multiple_Events"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011">2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
</select>



Month  <select name="end_month">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year      <select name="end_year">
<option value="2010" >2010</option>
<option value="2011">2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
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
<form name="form1" method="post" action="Museum_Quark.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Museums</font></b> <a name="Museums"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
</select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year  <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
</select>

</pre>
  </div>
  <p align="center">
    <input type="Submit" name="Input222">
    <input type="RESET" name="RESET222">
  <hr>
  <p align="center">&nbsp;</p>
</form>
<form name="form1" method="post" action="Galleries_Quark.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Galleries</font></b> <a name="Galleries"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013"selected >2013</option>
</select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year       <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013"selected >2013</option>
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
<form name="form1" method="post" action="Theater_Quark.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Theater ALL</font></b> <a name="Theater_All"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
</select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year      <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
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
<form name="form1" method="post" action="Theater_Continue_Quark.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Theater CONTINUING</font></b> <a name="Theater_Continuing"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
</select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year     <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option><option value="2014" >2014</option>
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
<form name="form1" method="post" action="Theater_New_Quark.cfm">
  <p align="center">
  <p align="center"><b><font size="4">Theater NEW</font></b> <a name="Theater_New"></a>
  <div align="center">
    <pre>	

Month  <select name="begin_month" class="beginMonth">
 <option value="1"   >January</option>
<option value="2"   >February</option>
<option value="3"  >March</option>
<option value="4"  >April</option>
<option value="5"  >May</option>
<option value="6"  >June</option>
<option value="7"  >July</option>
<option value="8"  >August</option>
<option value="9"  >September</option>
<option value="10"  >October</option>
<option value="11" >November</option>
<option value="12"  >December</option>
</select>

Day         <select name="begin_day">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year<select name="begin_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected >2013</option>
<option value="2014" >2014</option>
</select>



Month  <select name="end_month" class="endMonth">
 <option value="1" >January</option>
<option value="2" >February</option>
<option value="3">March</option>
<option value="4" >April</option>
<option value="5" >May</option>
<option value="6" >June</option>
<option value="7" >July</option>
<option value="8" >August</option>
<option value="9" >September</option>
<option value="10" >October</option>
<option value="11" >November</option>
<option value="12" >December</option>
</select>
  
Day         <select name="end_day" class="endDay">
<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>

Year  <select name="end_year">
<option value="2010" >2010</option>
<option value="2011" >2011</option>
<option value="2012" >2012</option>
<option value="2013" selected>2013</option>
<option value="2014" >2014</option>
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

<script>
$(document).ready(function() {
  targetBeginDate = Date.today().addMonths(2);
  beginString = targetBeginDate.toString("MMM");
 beginMonthNum = Date.getMonthNumberFromName(beginString) + 1;
 daysInMonth = Date.getDaysInMonth(2013,beginMonthNum);
 $(".beginMonth").val(beginMonthNum);
 $(".endMonth").val(beginMonthNum);
 $(".endDay").val(daysInMonth);
 

  
  
});

</script>
</body>
</html>
