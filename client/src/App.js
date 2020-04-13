import React from 'react';
import { BrowserRouter as Router, Route } from 'react-router-dom';
import Signup from './Signup';

function App() {
  return (
    <div className="App">
      <Router>
      <Route exact path="/signup" component={Signup} />
      </Router>
    </div>
  );
}

export default App;
