//var app = function() {
  // var hidden = document.getElementById("quote-of-the-day").style.visibility = "hidden";
  //
  // var article = document.getElementById("quotes").style["background-color"] = "dodgerblue";

  // var quoteArticle = document.createElement("article");
  // quoteArticle.classList.add('quote');

  // var blockquote = document.createElement('blockquote');
  // blockquote.innerText = 'New Quote. ';

  // var cite = document.createElement('cite');
  // cite.innerText = 'Some Person';

  // blockquote.appendChild(cite);
  // quoteArticle.appendChild(blockquote);

  //Query selector for when you want to select something by its Id.
  // var quotes = document.querySelector('#quotes');
  //
  // quotes.appendChild(quoteArticle);
//};



var QUOTES_ARRAY = [
  {quote: '76% of statistics on the internet are made up on the spot', author: 'Abraham Lincoln'},
  {quote: 'Crop rotation in the 14th century was considerably more widespread after....', author: 'Rick'},
  {quote: 'You don\'t wake up in the morning and think; what can I spanner?', author: 'Steve'}
]

//Changing the above code to single responsibility.
var app = function(){
  for(var quote of QUOTES_ARRAY){
    addQuote(quote.author, quote.quote);
  }
}

var addQuote = function(author, quoteText){
  var quoteArticle = createQuoteArticle();
  var blockQuote = createBlockQuote(quoteText);
  var cite = createCite(author);

  appendElements(quoteArticle, blockQuote, cite);
}

var createQuoteArticle = function(){
  var quoteArticle = document.createElement("article");
  quoteArticle.classList.add('quote');
  return quoteArticle;
}

var createBlockQuote = function(quoteText){
  var blockQuote = document.createElement('blockQuote');
  blockQuote.innerText = quoteText;
  return blockQuote;
}

var createCite = function(author){
  var cite = document.createElement('cite');
  cite.innerText = author;
  return cite;
}

var appendElements = function(quoteArticle, blockQuote, cite){
  blockQuote.appendChild(cite);
  quoteArticle.appendChild(blockQuote);
  var quotes = document.querySelector('#quotes');
  quotes.appendChild(quoteArticle);
}

window.onload = app;
