import React, { Component } from 'react';
import Navbar from './components/Navbar';
import Home from './views/Home';
import About from './views/About';
import Route from 'react-router-dom'
import Racers from './views/Racers'
import Users from './views/Users';

export default class App extends Component {
  constructor(props){
    super(props);
    this.state = {
      count: 0,
      name: 'Brie'
    }
  }

  handleClick = (step) => {
    let newCount = this.state.count + step //we don't use += because we don't want to reset this.state, this.setState is diff.
    this.setState({
        count: newCount
    })
  }

  changeName = (name) => {//this now takes in the newName from  the form as an argument
    //const name = prompt('What is your name?')
    this.setState({
      name
    })
  }
  render() {
    return (
      <>
      <Navbar />
      <div class ="container">
        <Route exact path='/'>
          <Home count={this.state.count} handleClick={this.handleClick} name={this.state.name} />
        </Route>
        <Route exact path='/about'>
          <About />
        </Route>
        <Route exact path='/users'>
          <Users />
        </Route>
        <Route exact path='/racers'>
          <Racers />
        </Route>
      </div>
      </>
    )
  }
}

//the class names come from the file names, hense the upper case descriptives for Buttons and App
//line 8: throw js commands into {} and they run as normal-->
//lines35 &  the empty 
