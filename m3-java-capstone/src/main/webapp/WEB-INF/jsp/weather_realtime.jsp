<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/jsp/common/header.jsp" />
<table class="title"><tr><td align="left"><div id="theTitle"></div></td><td align="center"><div id="theTemp"></div></td></tr></table>
<table class="table_main"><tr><td class="table_cell">
<table><tr><td>
<div class="forecast">
<!--############################Day1#############################-->
<div class="day">
  <div class="weekday">
    <div id="weekday0"></div>
  </div>
  <div class="weather">
      <div id="icon0"></div>
  </div>
  <div class="high">
    <div id="htemp0" class="high_cell"></div><div id="ltemp0" class=""></div>
  </div>
</div>  


<div class="hourly row" id="hourlyRow0" >
<div class="time_cell">
  <div  id="time0_7"></div>
  <div  id="icon0_7"></div>
  <div id="temp0_7"></div>
</div>
<div class="time_cell">
  <div  id="time0_6"></div>
  <div  id="icon0_6"></div>
  <div id="temp0_6"></div>
</div>
<div class="time_cell">
  <div  id="time0_5"></div>
  <div  id="icon0_5"></div>
  <div id="temp0_5"></div>
</div>
<div  class="time_cell">
  <div  id="time0_4"></div>
  <div  id="icon0_4"></div>
  <div id="temp0_4"></div>
</div>
<div  class="time_cell">
  <div  id="time0_3"></div>
  <div  id="icon0_3"></div>
  <div id="temp0_3"></div>
</div>
<div class="time_cell">
  <div  id="time0_2"></div>
  <div  id="icon0_2"></div>
  <div id="temp0_2"></div>
</div>
<div  class="time_cell">
  <div  id="time0_1"></div>
  <div  id="icon0_1"></div>
  <div id="temp0_1"></div>
</div>
<div class="time_cell">
  <div id="time0_0"></div>
  <div  id="icon0_0"></div>
  <div id="temp0_0"></div>
</div>

</div>
<!--############################Day2#############################-->
<div class="day row">
    <div class="weekday col-xs-4">
      <div id="weekday1"></div>
    </div>
    <div class="weather col-xs-4">
        <div id="icon1"></div>
    </div>
    <div class="high col-xs-2">
      <div id="htemp1"></div>
    </div>
    <div class="low col-xs-2">
      <div id="ltemp1" style="text-align: right;"></div>
    </div>
</div>  
<div class="hourly row" id="hourlyRow1" >
  <div class="time_cell">
    <div  id="time1_7"></div>
    <div  id="icon1_7"></div>
    <div id="temp1_7"></div>
  </div>
  <div class="time_cell">
    <div  id="time1_6"></div>
    <div  id="icon1_6"></div>
    <div id="temp1_6"></div>
  </div>
  <div class="time_cell">
    <div  id="time1_5"></div>
    <div  id="icon1_5"></div>
    <div id="temp1_5"></div>
  </div>
  <div  class="time_cell">
    <div  id="time1_4"></div>
    <div  id="icon1_4"></div>
    <div id="temp1_4"></div>
  </div>
  <div  class="time_cell">
    <div  id="time1_3"></div>
    <div  id="icon1_3"></div>
    <div id="temp1_3"></div>
  </div>
  <div class="time_cell">
    <div  id="time1_2"></div>
    <div  id="icon1_2"></div>
    <div id="temp1_2"></div>
  </div>
  <div  class="time_cell">
    <div  id="time1_1"></div>
    <div  id="icon1_1"></div>
    <div id="temp1_1"></div>
  </div>
  <div class="time_cell">
    <div id="time1_0"></div>
    <div  id="icon1_0"></div>
    <div id="temp1_0"></div>
  </div>

</div>
<!--############################Day3#############################-->
<div class="day row">
  <div class="weekday col-xs-4">
    <div id="weekday2"></div>
  </div>
  <div class="weather col-xs-4">
      <div id="icon2"></div>
  </div>
  <div class="high col-xs-2">
    <div id="htemp2"></div>
  </div>
  <div class="low col-xs-2">
    <div id="ltemp2" style="text-align: right;"></div>
  </div>
</div>  
<div class="hourly row" id="hourlyRow2" >
<div class="time_cell">
  <div  id="time2_7"></div>
  <div  id="icon2_7"></div>
  <div id="temp2_7"></div>
</div>
<div class="time_cell">
  <div  id="time2_6"></div>
  <div  id="icon2_6"></div>
  <div id="temp2_6"></div>
</div>
<div class="time_cell">
  <div  id="time2_5"></div>
  <div  id="icon2_5"></div>
  <div id="temp2_5"></div>
</div>
<div  class="time_cell">
  <div  id="time2_4"></div>
  <div  id="icon2_4"></div>
  <div id="temp2_4"></div>
</div>
<div  class="time_cell">
  <div  id="time2_3"></div>
  <div  id="icon2_3"></div>
  <div id="temp2_3"></div>
</div>
<div class="time_cell">
  <div  id="time2_2"></div>
  <div  id="icon2_2"></div>
  <div id="temp2_2"></div>
</div>
<div  class="time_cell">
  <div  id="time2_1"></div>
  <div  id="icon2_1"></div>
  <div id="temp2_1"></div>
</div>
<div class="time_cell">
  <div id="time2_0"></div>
  <div  id="icon2_0"></div>
  <div id="temp2_0"></div>
</div>

</div>
<!--#########################Day4####################-->
<div class="day row">
  <div class="weekday col-xs-4">
    <div id="weekday3"></div>
  </div>
  <div class="weather col-xs-4">
      <div id="icon3"></div>
  </div>
  <div class="high col-xs-2">
    <div id="htemp3"></div>
  </div>
  <div class="low col-xs-2">
    <div id="ltemp3" style="text-align: right;"></div>
  </div>
</div>  
<div class="hourly row" id="hourlyRow3" >
<div class="time_cell">
  <div  id="time3_7"></div>
  <div  id="icon3_7"></div>
  <div id="temp3_7"></div>
</div>
<div class="time_cell">
  <div  id="time3_6"></div>
  <div  id="icon3_6"></div>
  <div id="temp3_6"></div>
</div>
<div class="time_cell">
  <div  id="time3_5"></div>
  <div  id="icon3_5"></div>
  <div id="temp3_5"></div>
</div>
<div  class="time_cell">
  <div  id="time3_4"></div>
  <div  id="icon3_4"></div>
  <div id="temp3_4"></div>
</div>
<div  class="time_cell">
  <div  id="time3_3"></div>
  <div  id="icon3_3"></div>
  <div id="temp3_3"></div>
</div>
<div class="time_cell">
  <div  id="time3_2"></div>
  <div  id="icon3_2"></div>
  <div id="temp3_2"></div>
</div>
<div  class="time_cell">
  <div  id="time3_1"></div>
  <div  id="icon3_1"></div>
  <div id="temp3_1"></div>
</div>
<div class="time_cell">
  <div id="time3_0"></div>
  <div  id="icon3_0"></div>
  <div id="temp3_0"></div>
</div>
</div>
<!--#########################Day5####################-->
<div class="day row">
  <div class="weekday col-xs-4">
    <div id="weekday4"></div>
  </div>
  <div class="weather col-xs-4">
      <div id="icon4"></div>
  </div>
  <div class="high col-xs-2">
    <div id="htemp4"></div>
  </div>
  <div class="low col-xs-2">
    <div id="ltemp4" style="text-align: right"></div>
  </div>
</div>  
<div class="hourly row" id="hourlyRow4" >
<div class="time_cell">
  <div  id="time4_7"></div>
  <div  id="icon4_7"></div>
  <div id="temp4_7"></div>
</div>
<div class="time_cell">
  <div  id="time4_6"></div>
  <div  id="icon4_6"></div>
  <div id="temp4_6"></div>
</div>
<div class="time_cell">
  <div  id="time4_5"></div>
  <div  id="icon4_5"></div>
  <div id="temp4_5"></div>
</div>
<div  class="time_cell">
  <div  id="time4_4"></div>
  <div  id="icon4_4"></div>
  <div id="temp4_4"></div>
</div>
<div  class="time_cell">
  <div  id="time4_3"></div>
  <div  id="icon4_3"></div>
  <div id="temp4_3"></div>
</div>
<div class="time_cell">
  <div  id="time4_2"></div>
  <div  id="icon4_2"></div>
  <div id="temp4_2"></div>
</div>
<div  class="time_cell">
  <div  id="time4_1"></div>
  <div  id="icon4_1"></div>
  <div id="temp4_1"></div>
</div>
<div class="time_cell">
  <div id="time4_0"></div>
  <div  id="icon4_0"></div>
  <div id="temp4_0"></div>
</div>
</div>

</div>
</td></tr><table>
</td></tr><table>

<div class="mypanel" id="mypanel" style="visibility:visible;"></div>


<script>
<c:import url="/js/weather.js" />


//$.getJSON('https://api.openweathermap.org/data/2.5/forecast?zip=15218,us&apikey=ccb8c2661a426fea5eb9217a8f56cf80&units=imperial', function(data) {
//      fnLoadForecast(data)
//        $(".mypanel").html(JSON.stringify(data));document.getElementById("").inn;
//});

 var testingData ='{"cod":"200","message":0.0049,"cnt":40,"list":[{"dt":1527854400,"main":{"temp":69.89,"temp_min":69.89,"temp_max":72.03,"pressure":983.29,"sea_level":1024.01,"grnd_level":983.29,"humidity":89,"temp_kf":-1.19},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":44},"wind":{"speed":4.65,"deg":218.502},"sys":{"pod":"d"},"dt_txt":"2018-06-01 12:00:00"},{"dt":1527865200,"main":{"temp":76.75,"temp_min":76.75,"temp_max":78.35,"pressure":983.05,"sea_level":1023.52,"grnd_level":983.05,"humidity":79,"temp_kf":-0.89},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":{"all":12},"wind":{"speed":4.27,"deg":227.001},"sys":{"pod":"d"},"dt_txt":"2018-06-01 15:00:00"},{"dt":1527876000,"main":{"temp":83.12,"temp_min":83.12,"temp_max":84.18,"pressure":981.51,"sea_level":1021.85,"grnd_level":981.51,"humidity":64,"temp_kf":-0.59},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":36},"wind":{"speed":3.62,"deg":230},"sys":{"pod":"d"},"dt_txt":"2018-06-01 18:00:00"},{"dt":1527886800,"main":{"temp":72.97,"temp_min":72.97,"temp_max":73.51,"pressure":981.1,"sea_level":1021.42,"grnd_level":981.1,"humidity":98,"temp_kf":-0.3},"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}],"clouds":{"all":92},"wind":{"speed":4.38,"deg":248.001},"rain":{"3h":3.44},"sys":{"pod":"d"},"dt_txt":"2018-06-01 21:00:00"},{"dt":1527897600,"main":{"temp":73.51,"temp_min":73.51,"temp_max":73.51,"pressure":980.62,"sea_level":1021.29,"grnd_level":980.62,"humidity":94,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":100},"wind":{"speed":2.66,"deg":6.50061},"rain":{"3h":0.06},"sys":{"pod":"n"},"dt_txt":"2018-06-02 00:00:00"},{"dt":1527908400,"main":{"temp":67.86,"temp_min":67.86,"temp_max":67.86,"pressure":981.38,"sea_level":1022.07,"grnd_level":981.38,"humidity":98,"temp_kf":0},"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10n"}],"clouds":{"all":88},"wind":{"speed":1.92,"deg":235.504},"rain":{"3h":6.375},"sys":{"pod":"n"},"dt_txt":"2018-06-02 03:00:00"},{"dt":1527919200,"main":{"temp":66.84,"temp_min":66.84,"temp_max":66.84,"pressure":981.12,"sea_level":1021.71,"grnd_level":981.12,"humidity":99,"temp_kf":0},"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10n"}],"clouds":{"all":92},"wind":{"speed":2.59,"deg":335.009},"rain":{"3h":3.1},"sys":{"pod":"n"},"dt_txt":"2018-06-02 06:00:00"},{"dt":1527930000,"main":{"temp":67.97,"temp_min":67.97,"temp_max":67.97,"pressure":980.8,"sea_level":1021.63,"grnd_level":980.8,"humidity":99,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":92},"wind":{"speed":4.38,"deg":356.004},"rain":{"3h":0.265},"sys":{"pod":"n"},"dt_txt":"2018-06-02 09:00:00"},{"dt":1527940800,"main":{"temp":67.92,"temp_min":67.92,"temp_max":67.92,"pressure":981.87,"sea_level":1022.66,"grnd_level":981.87,"humidity":99,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":92},"wind":{"speed":4.7,"deg":356.504},"rain":{"3h":0.215},"sys":{"pod":"d"},"dt_txt":"2018-06-02 12:00:00"},{"dt":1527951600,"main":{"temp":68.29,"temp_min":68.29,"temp_max":68.29,"pressure":982.69,"sea_level":1023.49,"grnd_level":982.69,"humidity":99,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":100},"wind":{"speed":6.17,"deg":7.00278},"rain":{"3h":0.44},"sys":{"pod":"d"},"dt_txt":"2018-06-02 15:00:00"},{"dt":1527962400,"main":{"temp":67.5,"temp_min":67.5,"temp_max":67.5,"pressure":983.28,"sea_level":1023.71,"grnd_level":983.28,"humidity":95,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":92},"wind":{"speed":6.4,"deg":7.00018},"rain":{"3h":0.67},"sys":{"pod":"d"},"dt_txt":"2018-06-02 18:00:00"},{"dt":1527973200,"main":{"temp":69.48,"temp_min":69.48,"temp_max":69.48,"pressure":982.84,"sea_level":1023.36,"grnd_level":982.84,"humidity":90,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":100},"wind":{"speed":4.29,"deg":357.001},"rain":{"3h":0.045},"sys":{"pod":"d"},"dt_txt":"2018-06-02 21:00:00"},{"dt":1527984000,"main":{"temp":67.43,"temp_min":67.43,"temp_max":67.43,"pressure":982.93,"sea_level":1023.53,"grnd_level":982.93,"humidity":100,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":92},"wind":{"speed":2.51,"deg":340.001},"rain":{"3h":1.24},"sys":{"pod":"n"},"dt_txt":"2018-06-03 00:00:00"},{"dt":1527994800,"main":{"temp":66.58,"temp_min":66.58,"temp_max":66.58,"pressure":983.16,"sea_level":1023.96,"grnd_level":983.16,"humidity":99,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":76},"wind":{"speed":2.26,"deg":6.00729},"rain":{"3h":0.44},"sys":{"pod":"n"},"dt_txt":"2018-06-03 03:00:00"},{"dt":1528005600,"main":{"temp":65.51,"temp_min":65.51,"temp_max":65.51,"pressure":982.97,"sea_level":1023.81,"grnd_level":982.97,"humidity":97,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":92},"wind":{"speed":4.07,"deg":63.0003},"rain":{"3h":0.010000000000002},"sys":{"pod":"n"},"dt_txt":"2018-06-03 06:00:00"},{"dt":1528016400,"main":{"temp":64.89,"temp_min":64.89,"temp_max":64.89,"pressure":982.79,"sea_level":1023.87,"grnd_level":982.79,"humidity":98,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":92},"wind":{"speed":3.38,"deg":73.5004},"rain":{"3h":0.11},"sys":{"pod":"n"},"dt_txt":"2018-06-03 09:00:00"},{"dt":1528027200,"main":{"temp":66.55,"temp_min":66.55,"temp_max":66.55,"pressure":983.36,"sea_level":1024.36,"grnd_level":983.36,"humidity":99,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":76},"wind":{"speed":5.5,"deg":121.002},"rain":{"3h":0.42},"sys":{"pod":"d"},"dt_txt":"2018-06-03 12:00:00"},{"dt":1528038000,"main":{"temp":67.5,"temp_min":67.5,"temp_max":67.5,"pressure":983.49,"sea_level":1024.36,"grnd_level":983.49,"humidity":85,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":88},"wind":{"speed":7.43,"deg":127.501},"rain":{"3h":0.020000000000003},"sys":{"pod":"d"},"dt_txt":"2018-06-03 15:00:00"},{"dt":1528048800,"main":{"temp":70.15,"temp_min":70.15,"temp_max":70.15,"pressure":982.04,"sea_level":1022.79,"grnd_level":982.04,"humidity":77,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":48},"wind":{"speed":7.96,"deg":130.502},"rain":{},"sys":{"pod":"d"},"dt_txt":"2018-06-03 18:00:00"},{"dt":1528059600,"main":{"temp":71.41,"temp_min":71.41,"temp_max":71.41,"pressure":980.72,"sea_level":1021.46,"grnd_level":980.72,"humidity":74,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":{"all":24},"wind":{"speed":8.99,"deg":133},"rain":{},"sys":{"pod":"d"},"dt_txt":"2018-06-03 21:00:00"},{"dt":1528070400,"main":{"temp":63.2,"temp_min":63.2,"temp_max":63.2,"pressure":980.26,"sea_level":1021.12,"grnd_level":980.26,"humidity":85,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":100},"wind":{"speed":9.13,"deg":130.001},"rain":{"3h":0.55},"sys":{"pod":"n"},"dt_txt":"2018-06-04 00:00:00"},{"dt":1528081200,"main":{"temp":58.5,"temp_min":58.5,"temp_max":58.5,"pressure":980.92,"sea_level":1021.94,"grnd_level":980.92,"humidity":100,"temp_kf":0},"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10n"}],"clouds":{"all":100},"wind":{"speed":5.61,"deg":149.502},"rain":{"3h":4.27},"sys":{"pod":"n"},"dt_txt":"2018-06-04 03:00:00"},{"dt":1528092000,"main":{"temp":56.06,"temp_min":56.06,"temp_max":56.06,"pressure":980.45,"sea_level":1021.87,"grnd_level":980.45,"humidity":100,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":92},"wind":{"speed":6.51,"deg":141.5},"rain":{"3h":1.68},"sys":{"pod":"n"},"dt_txt":"2018-06-04 06:00:00"},{"dt":1528102800,"main":{"temp":58.94,"temp_min":58.94,"temp_max":58.94,"pressure":980.39,"sea_level":1021.99,"grnd_level":980.39,"humidity":100,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":100},"wind":{"speed":3.96,"deg":234.006},"rain":{"3h":1.8625},"sys":{"pod":"n"},"dt_txt":"2018-06-04 09:00:00"},{"dt":1528113600,"main":{"temp":60.82,"temp_min":60.82,"temp_max":60.82,"pressure":982.15,"sea_level":1023.62,"grnd_level":982.15,"humidity":95,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":92},"wind":{"speed":7.4,"deg":290.501},"rain":{"3h":0.25},"sys":{"pod":"d"},"dt_txt":"2018-06-04 12:00:00"},{"dt":1528124400,"main":{"temp":62.92,"temp_min":62.92,"temp_max":62.92,"pressure":983.16,"sea_level":1024.25,"grnd_level":983.16,"humidity":88,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":56},"wind":{"speed":7.29,"deg":303.004},"rain":{"3h":0.037500000000001},"sys":{"pod":"d"},"dt_txt":"2018-06-04 15:00:00"},{"dt":1528135200,"main":{"temp":65.35,"temp_min":65.35,"temp_max":65.35,"pressure":983.12,"sea_level":1023.87,"grnd_level":983.12,"humidity":78,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":44},"wind":{"speed":7.29,"deg":296.505},"rain":{},"sys":{"pod":"d"},"dt_txt":"2018-06-04 18:00:00"},{"dt":1528146000,"main":{"temp":66.45,"temp_min":66.45,"temp_max":66.45,"pressure":982.7,"sea_level":1023.37,"grnd_level":982.7,"humidity":71,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":68},"wind":{"speed":7.4,"deg":299.007},"rain":{},"sys":{"pod":"d"},"dt_txt":"2018-06-04 21:00:00"},{"dt":1528156800,"main":{"temp":64.94,"temp_min":64.94,"temp_max":64.94,"pressure":982.7,"sea_level":1023.51,"grnd_level":982.7,"humidity":70,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":92},"wind":{"speed":6.06,"deg":298.501},"rain":{},"sys":{"pod":"n"},"dt_txt":"2018-06-05 00:00:00"},{"dt":1528167600,"main":{"temp":61.68,"temp_min":61.68,"temp_max":61.68,"pressure":983.05,"sea_level":1024.15,"grnd_level":983.05,"humidity":74,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":56},"wind":{"speed":4.61,"deg":303.012},"rain":{},"sys":{"pod":"n"},"dt_txt":"2018-06-05 03:00:00"},{"dt":1528178400,"main":{"temp":58.41,"temp_min":58.41,"temp_max":58.41,"pressure":982.83,"sea_level":1024.04,"grnd_level":982.83,"humidity":74,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":4.94,"deg":297.001},"rain":{},"sys":{"pod":"n"},"dt_txt":"2018-06-05 06:00:00"},{"dt":1528189200,"main":{"temp":53.35,"temp_min":53.35,"temp_max":53.35,"pressure":982.83,"sea_level":1024.33,"grnd_level":982.83,"humidity":80,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":4.7,"deg":277.008},"rain":{},"sys":{"pod":"n"},"dt_txt":"2018-06-05 09:00:00"},{"dt":1528200000,"main":{"temp":56.82,"temp_min":56.82,"temp_max":56.82,"pressure":983.2,"sea_level":1024.48,"grnd_level":983.2,"humidity":76,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":4.18,"deg":256.001},"rain":{},"sys":{"pod":"d"},"dt_txt":"2018-06-05 12:00:00"},{"dt":1528210800,"main":{"temp":66.21,"temp_min":66.21,"temp_max":66.21,"pressure":983.06,"sea_level":1023.91,"grnd_level":983.06,"humidity":66,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":5.97,"deg":268.502},"rain":{},"sys":{"pod":"d"},"dt_txt":"2018-06-05 15:00:00"},{"dt":1528221600,"main":{"temp":70.04,"temp_min":70.04,"temp_max":70.04,"pressure":981.63,"sea_level":1022.31,"grnd_level":981.63,"humidity":55,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":8.63,"deg":281.503},"rain":{},"sys":{"pod":"d"},"dt_txt":"2018-06-05 18:00:00"},{"dt":1528232400,"main":{"temp":70.37,"temp_min":70.37,"temp_max":70.37,"pressure":980.37,"sea_level":1021.01,"grnd_level":980.37,"humidity":50,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":9.44,"deg":290.505},"rain":{},"sys":{"pod":"d"},"dt_txt":"2018-06-05 21:00:00"},{"dt":1528243200,"main":{"temp":65.38,"temp_min":65.38,"temp_max":65.38,"pressure":980.75,"sea_level":1021.43,"grnd_level":980.75,"humidity":52,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":7.83,"deg":306.002},"rain":{},"sys":{"pod":"n"},"dt_txt":"2018-06-06 00:00:00"},{"dt":1528254000,"main":{"temp":59.99,"temp_min":59.99,"temp_max":59.99,"pressure":981.27,"sea_level":1022.22,"grnd_level":981.27,"humidity":57,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":44},"wind":{"speed":4.74,"deg":321.501},"rain":{},"sys":{"pod":"n"},"dt_txt":"2018-06-06 03:00:00"},{"dt":1528264800,"main":{"temp":54.7,"temp_min":54.7,"temp_max":54.7,"pressure":981.49,"sea_level":1022.72,"grnd_level":981.49,"humidity":67,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":4.63,"deg":301.5},"rain":{},"sys":{"pod":"n"},"dt_txt":"2018-06-06 06:00:00"},{"dt":1528275600,"main":{"temp":50.92,"temp_min":50.92,"temp_max":50.92,"pressure":982.01,"sea_level":1023.39,"grnd_level":982.01,"humidity":76,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":3.71,"deg":274.005},"rain":{},"sys":{"pod":"n"},"dt_txt":"2018-06-06 09:00:00"}],"city":{"id":420028882,"name":"Pittsburgh","coord":{"lat":40.4237,"lon":-79.8829},"country":"US"}}';
 var json = JSON.parse(testingData);
 
 fnLoadForecast(json);

 var main = function() {
  $(".day").click(function() {
    $(this).next().toggle();
    $(this).find('.weekday span').toggleClass('glyphicon-minus');
  });
};

$(document).ready(main);

</script>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />
