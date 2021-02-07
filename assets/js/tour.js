var tourInfo = "";
var currStopNum = 0;
var queryString = "";
var stopName="";

window.onload = function(){
    var delayInMilliseconds =500; //1 second
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
    currStopNum++;
}

function getInfo(){
    return new Promise(function (resolve, reject) {
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "https://us-central1-nfc-tours.cloudfunctions.net/getData?tourName=FullCampusTour", true);
        xhr.onload = function () {
            tourInfo = JSON.parse(xhr.responseText);
            resolve;
        };
        xhr.onerror = reject;
        xhr.send();  
    })
}

function setTitles() {
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
