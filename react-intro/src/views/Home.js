import React, { Component } from 'react'
import Buttons from '../components/Buttons'
import { ButtonNameChange } from '../components/ButtonNameChange'

export default class Home extends Component {
    render() {
        return (
            <div>
                <h1> Hello, {this.props.name}! </h1> 
                <h4> Welcome to my first react app.</h4> 
            </div>
        )
    }
}
