import React, { Component } from "react";
import About from "./About";
import Home from "./Home";
import Pricing from "./Pricing";
import Contact  from "./Contact";
import {BrowserRouter as Router, Route} from 'react-router-dom';
import Navbar from './Navbar';
import Cats from './Cats';

class Main extends Component {
  constructor(props) {
    super(props);
    this.state = {
      pricing: [
        {level: "Hobby", cost: 0},
        {level: "Startup", cost: 10},
        {level: "Enterprise", cost: 100}
      ]
    };
}
  //   // this.gotoHome = this.gotoHome.bind(this);
  //   // this.gotoAbout = this.gotoAbout.bind(this);
  //   // this.gotoPricing = this.gotoPricing.bind(this);
  //   // this.gotoContact = this.gotoContact.bind(this);
  // }

  render() {
    // const child = this.pageComponent();
    return (
      // <div>
      //   <h4>Main App</h4>
      //   <ul>
      //     <li>
      //       <a onClick={this.gotoHome}>Home</a>
      //     </li>
      //     <li>
      //       <a onClick={this.gotoAbout}>About</a>
      //     </li>
      //     <li>
      //       <a onClick={this.gotoPricing}>Pricing</a>
      //     </li>
      //     <li>
      //       <a onClick={this.gotoContact}>Contact</a>
      //     </li>
      //   </ul>
      //   {child}
      // </div>
      <Router>
        <React.Fragment>
          <Navbar />
          <Route exact path = "/" component={Home}/>
          <Route path = "/about" component={About}/>
          <Route path = "/pricing" render={()=><Pricing prices={this.state.pricing}/>}/>
          <Route path = "/contact" component={Contact}/>
          <Route path = '/cats' component={Cats}/>
        </React.Fragment>
      </Router>
    );
  }

  // pageComponent() {
  //   switch (this.state.page) {
  //     case "/about":
  //       return <About />;
  //     case "/pricing":
  //       return <Pricing />;
  //     case '/contact':
  //       return <Contact />;
  //     default:
  //       return <Home />;
  //   }
  // }

  // gotoHome(event) {
  //   event.preventDefault();
  //   this.setState({ page: "/home" });
  // }
  //
  // gotoAbout(event) {
  //   event.preventDefault();
  //   this.setState({ page: "/about" });
  // }
  //
  // gotoPricing(event) {
  //   event.preventDefault();
  //   this.setState({ page: "/pricing" });
  // }
  //
  // gotoContact(event) {
  //   event.preventDefault();
  //   this.setState({ page: "/contact" });
  // }
}

export default Main;
