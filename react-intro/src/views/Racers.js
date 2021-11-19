import React, { Component } from 'react'

export default class Racers extends Component {
    constructor(props){
        super(props);
        console.log('Racers component constructed')
        
        this.state = {
            racers: []
        }
    }
    componenetDidMount(){ //API BUILD OUT HERE
        console.log('Racers component did mount')
        fetch('http://ergast.com/api/f1/2021/1/driverStandings.json')
            .then(res =>res.json())
            .then(data => this.setState({
                racers: data.MRData.StandingsTable.StandingsList[0].DriverStandings
            }))
    }

    render() {
        console.log('Racers component rendered')
        return (
            <div>
                This is the Racers Page
                {this.state.racers.map((r, i) => <li key={i}> {r.Driver.givenName}</li>)}
            </div>
        )
    }
}
