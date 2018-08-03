const makeRequest = function(url, callback){
  const request = new XMLHttpRequest();
  request.open('GET', url);
  request.addEventListener('load', callback);
  request.send();
}

const requestComplete = function(response){
  const json = JSON.parse(response.target.responseText);

  displayGenderChart(json);
  displayObjectOfSearch(json);
}

const displayGenderChart= function(data){
  const numberofMales = _.sumBy(data, {gender: 'Male'});
  const numberofFemales = _.sumBy(data, {gender: 'Female'});

  const chartData = google.visualization.arrayToDataTable([
    ['Gender', "Number of Searches"],
    ['Female', numberofFemales],
    ['Male', numberofMales]
  ]);

  const option = {
    title: "Gender split",
    pieHole: 0.4,
  };

  const chart = new google.visualization.PieChart(document.getElementById('genderchart'));
  chart.draw(chartData, option);
}

const displayObjectOfSearch = function(data){

const grouped = _.groupBy(data, 'object_of_search');

const chartData = google.visualization.arrayToDataTable([
  ['Object Of Search', grouped.length]
]);

const options = {
  title: 'Object of Searches',
}

const chart = new google.visualization.PieChart(document.getElementById('objectofsearches'));
chart.draw(chartData, option);

}


window.addEventListener('load', function(){
  google.charts.load("current", {packages:["corechart"]});
  const mapWrapper = new MapWrapper("map", 51.5074, 0.1278, 10);

  mapWrapper.map.on('click', function(event){
    const lat = event.latlng.lat;
    const lng = event.latlng.lng;
    const url = `https://data.police.uk/api/stops-street?lat=${lat}&lng=${lng}`;


    makeRequest(url, requestComplete);
  });
});
