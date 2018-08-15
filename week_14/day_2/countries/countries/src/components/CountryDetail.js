import React from 'react';

const CountryDetail = (props) =>{
  if(!props.country){
    return null;
  }
  return <h1>{props.country.name}</h1>
}

export default CountryDetail;
