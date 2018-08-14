import React, { Component } from 'react';

const Comment = (props)=>{
  return(
    <div className="Comment">
      <h4 className='commentAuthor'>{props.author}</h4>
      {props.children}
    </div>
  )
}

// class Comment extends Component{
//   render(){
//     return(
//       <div className="Comment">
//         <h4 className='commentAuthor'>{this.props.author}</h4>
//         {this.props.children}
//       </div>
//     )
//   }
// }

export default Comment
