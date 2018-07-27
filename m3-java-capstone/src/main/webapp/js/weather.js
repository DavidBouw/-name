 
var rows = 50;
var weekdays = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
var icons = ["clear-day","clear-night","partly-cloudy-day","partly-cloudy-night","cloudy","cloudy","cloudy","cloudy","rain","rain","rain","rain","rain","rain","snow","snow","fog","fog"];
var open_weather_icons = ["01d","01n", "02d", "02n", "03d", "03n", "04d", "04n", "09d", "09n", "10d", "10n", "11d", "11n", "13d", "13n", "50d", "50n"];
var tempHigh = 0;
var tempLow = 0;

function fnPrintDateRow(json, theDate, i, dateIndex){
  blob = document.getElementById("weekday" + dateIndex);
  blob.innerHTML = '<span class="glyphicon glyphicon-plus"></span>&nbsp;';
  blob.innerHTML += '<p>' + weekdays[theDate.getDay()] + '</p>';
  blob = document.getElementById("ltemp" + dateIndex);
  tempLow = json.list[i].main.temp_min.toPrecision(2);
  blob.innerHTML = "<p>" + tempLow + "&deg;</p>";
  blob = document.getElementById("htemp" + dateIndex);
  tempHigh = json.list[i].main.temp_max.toPrecision(2);
  blob.innerHTML = "<p>" + tempHigh + "&deg;</p>";
  blob = document.getElementById("icon" + dateIndex);
  var dayIcon = json.list[i].weather[0].icon;
  
  if (dayIcon.substring(dayIcon.length-1, dayIcon.length) == "n") {dayIcon = dayIcon.substring(0, dayIcon.length-1) + "d"}
  blob.innerHTML = '<img src="icons/' + icons[open_weather_icons.indexOf(dayIcon)] + '.png">';
}

function fnPrintHoursCell(json, theDate, i, dateIndex, hoursIndex){
  var timeStr = theDate.toLocaleTimeString();
  var theTemp = 0;
  timeStr = timeStr.substring(0,timeStr.indexOf(":")) + timeStr.substring(timeStr.indexOf(" ") + 1,timeStr.length);
  blob = document.getElementById("time" + dateIndex + "_" + hoursIndex);
  blob.innerHTML = timeStr;
  blob = document.getElementById("temp" + dateIndex + "_" + hoursIndex);
  theTemp = json.list[i].main.temp.toPrecision(2);
  blob.innerHTML = theTemp + "&deg;";
  if (tempLow > theTemp) {tempLow = theTemp;document.getElementById("ltemp" + dateIndex).innerHTML = "<p>" + tempLow + "&deg;</p>"}
  blob = document.getElementById("icon"  + dateIndex + "_" + hoursIndex);
  if (tempHigh < theTemp) {tempHigh = theTemp; document.getElementById("htemp" + dateIndex).innerHTML = "<p>" + tempHigh + "&deg;</p>";}
  blob.innerHTML = '<img src="icons/' + icons[open_weather_icons.indexOf(json.list[i].weather[0].icon)] + '.png">';

document.getElementById("htemp" + dateIndex)
}

function fnLoadForecast(json){
  var oldDate = "";
  var dt = json.list[0].dt;
  var theDate = new Date(dt * 1000);	
  var hoursIndex = 0;
  var dateIndex = 0;
  var dt = json.list[0].dt;
  var theDate = new Date(dt * 1000);	
  document.getElementById("theTitle").innerHTML = "<h2>&nbsp;" + theDate.toDateString() + "&nbsp;</h2>";
  document.getElementById("theTemp").innerHTML = "<h2>" + json.list[0].main.temp.toPrecision(2) + "&deg;&nbsp;&nbsp;&nbsp;&nbsp;</h2>";
  for (x=0; x<rows; x++){
    var dt = json.list[x].dt;
    var theDate = new Date(dt * 1000);
    var dateStr = theDate.toDateString();
    dateStr = dateStr.substring(0,dateStr.lastIndexOf(" "))
    if (oldDate != dateStr){
      if (oldDate != "" && oldDate!= dateStr) dateIndex += 1;
      if(dateIndex > 4) {break;}
      fnPrintDateRow(json, theDate, x, dateIndex);
      oldDate = dateStr;
      hoursIndex = 0;
    }
    fnPrintHoursCell(json, theDate, x,  dateIndex, hoursIndex);
    hoursIndex += 1;
  }
  fnHideEmtpyDivs();
}

function fnHideEmtpyDivs(){
  var allDivs = document.getElementsByClassName("time_cell");
  for (x=0; x < allDivs.length; x++){
    if(allDivs[x].innerHTML.indexOf("img")=== -1) {
        allDivs[x].style.visibility = "hidden"
    }
  }
}
