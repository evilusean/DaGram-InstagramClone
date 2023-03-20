import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
//React-router-dom used to redirect to pages
import { lazy, Suspense } from 'react';

const Login = lazy(() => import('./pages/login'));

//lazy allows you to split big bundle into chunks, codesplit is dynamically loaded
//suspense is used for cleintside rendering, fallback is used for rendering, while loading will show 'Loading...'
function App() {
  return (
    <Router>
      <Suspense fallback={<p>Loading...</p>}>
        <Switch>
          <Route path="/login" component={Login} />
        </Switch>
      </Suspense>
    </Router>
  )
}

export default App;
