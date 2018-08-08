const QuoteView = require('./views/quoteView');
const Request = require('./services/request.js');

const quoteView = new QuoteView();
const request = new Request("http://localhost:3000/api/quotes");

const getQuotesRequestComplete = function(allQuotes){

  for(let quote of allQuotes){
    quoteView.addQuote(quote);
  }
}

const createButtonClicked = function(event){
  event.preventDefault();//stops the page refreshing
  console.log("button clicked");

  const nameInputValue = document.querySelector('#name').value;
  const quoteInputValue = document.querySelector('#quote').value;

  const quoteToSend = {
    name: nameInputValue,
    quote: quoteInputValue
  };
  request.post(createRequestComplete, quoteToSend);
}

const createRequestComplete = function(newQuote){
  console.log(newQuote);
  quoteView.addQuote(newQuote);
}

// delete all quotes
const deleteButtonClicked = function(event){
  //event.preventDefault(); not needed as buttons dont have a default refresh
  console.log("button clicked");

  request.delete(deleteRequestComplete);
}

const deleteRequestComplete = function(){
  quoteView.clear();
}


const appStart = function(){
  request.get(getQuotesRequestComplete);

  const createQuoteButton = document.querySelector("#submit-quote");
  createQuoteButton.addEventListener('click', createButtonClicked)

  const deleteQuotesButton = document.querySelector('#deleteButton');
  deleteQuotesButton.addEventListener('click', deleteButtonClicked);
}

document.addEventListener('DOMContentLoaded', appStart);
