var tourInfo = "";
var currStopNum = 0;
var queryString = "";
var stopName="";

window.onload = function(){
    var delayInMilliseconds =5000; //1 second
    getInfo();
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    stopName = urlParams.get('stopname')
    setTimeout(function() {
        console.log("*"+typeof(stopName)+"*")
        var result = tourInfo.findIndex(x => x.pointofinterest.replace(/\s+/g, '') === stopName.valueOf());
        currStopNum = result;
        setTitles();
    }, delayInMilliseconds);
    
}

function nextStop() {
    setTitles();
    initMap();
    currStopNum++;
}

function getInfo(){
    return new Promise(function (resolve, reject) {
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "https://toursapi.austinwarnock.tech/getData?tourName=FullCampusTour", true);
        xhr.onload = function () {
            tourInfo = JSON.parse(xhr.responseText);
            resolve;
        };
        xhr.onerror = reject;
        xhr.send();  
    })
}

function setTitles() {
    if(currStopNum >= tourInfo.length) {
        document.getElementById('tour-title').innerHTML = "Thank you!";
        document.getElementById('tour-subtitle').innerHTML = "See you Soon!";
        document.getElementById('tourdesc').innerHTML = "Thank you for joining us today! We hope you had a wonderful time and hope to see you continue your interest in the University of Oklahoma!";
        document.getElementById("tour-head").style.backgroundImage="url(\"images/tour-masthead.jpg\")";
        return;
    }
    console.log(tourInfo);
    var currStop = tourInfo[currStopNum];
    document.getElementById('tour-title').innerHTML = currStop.pointofinterest;
    document.getElementById('tour-subtitle').innerHTML = currStop.stopname;
    document.getElementById('tourdesc').innerHTML = currStop.pointinfo;
    document.getElementById("tour-head").style.backgroundImage="url(\"images/"+ currStop.pointofinterest +".jpg\")";
    var url = window.location.href;    
    if (url.indexOf('?') > -1){
        url += '&stopname=' + currStop.pointofinterest.replace(/\s/g, '');
    }
    else{
        url += '&stopname=' + currStop.pointofinterest.replace(/\s/g, '');
    }
}

// Initialize and add the map
function initMap() {
    // The location of StopPoint
    var coord = tourInfo[currStopNum].coords.split(',');
    const point = { lat: parseFloat(coord[0]), lng: parseFloat(coord[1]) };
    console.log(point);
    // The map, centered at StopPoint
    const map = new google.maps.Map(document.getElementById("map"), {
      zoom: 15,
      center: point,
      mapTypeId: 'satellite'
    });
    // The marker, positioned at StopPoint
    const marker = new google.maps.Marker({
      position: point,
      map: map,
    });
  }
