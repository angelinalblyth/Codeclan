const makeRequest = function(url, callback){
  //create a new XMLHttpRequest object
  const request = new XMLHttpRequest();
  //set the type of request we want with the url we want to call
  request.open('GET', url);
  //set the callback we want to use when the call is complete
  request.addEventListener('load', callback);
  //set the request
  request.send();
}

const requestComplete = function(){
  //this is the request object itself. XMLHttpRequest
  if(this.status !== 200)return;
  //grab the response text
  const jsonString = this.responseText;
  //console.log(jsonString);
  const countries = JSON.parse(jsonString);
  //console.log(countries);
  // const country = countries[0];
  // console.log(country);
  populateList(countries);
  handleSelected(countries);
}

const populateList = function(countries){
  let selectTag = document.getElementById('countryDropdown');

  countries.forEach(function(country, index){
    let option = document.createElement('option');
    option.className = 'select-result'
    option.value = index;
    option.innerText = country.name;
    selectTag.appendChild(option);
  })

}

const handleSelected = function(countries){

  var selected = document.querySelector('select');

  selected.addEventListener('change', function(){
    var country = countries[this.value];
    showCountryDetails(country);
  })
};

const showCountryDetails = function(country){
  var countryDetails = document.getElementById('countryDetails');
  var pTag = document.createElement('p');
  pTag.innerText = country.name;
  countryDetails.appendChild(pTag);

  localStorage.setItem('CountryName', JSON.stringify(country.name));
}

// const handleButtonClick = function(){
//   const url = 'https://restcountries.eu/rest/v2/all';
//
//   makeRequest(url, requestComplete);
// }

var app = function(){
  // var button =  document.querySelector('#requestCountries');
  // button.addEventListener('click', handleButtonClick);

  const url = 'https://restcountries.eu/rest/v2/all';

  makeRequest(url, requestComplete);

  //Can do the below arrow function too.
  // const buton = document.getElementById('requestCountries');
  // button.addEventListener('click', () =>{
  //   makeRequest(url, requestComplete )
  // }, {once: true})

  var jsonString = localStorage.getItem('CountryName');
  var lastSelectedCountry = JSON.parse(jsonString);
  console.log(lastSelectedCountry);

  if (!lastSelectedCountry) return;
  showCountryDetails(lastSelectedCountry);



}

window.addEventListener('load', app);

//For the drop down menu use the forEach as you get access to the element and whats in each object.
