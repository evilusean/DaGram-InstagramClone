import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
//React-router-dom used to redirect to pages, switch was react v17, use Routes for V18
import { lazy, Suspense } from 'react';
import * as ROUTES from './constants/routes';
//Imports all routes constants from routes.js

// function App() {
//   return (
//     <p> Hello DaGram</p>
//   );
// }

const Login = lazy(() => import('./pages/login'));

//lazy allows you to split big bundle into chunks, codesplit is dynamically loaded
//suspense is used for cleintside rendering, fallback is used for rendering, while loading will show 'Loading...'
function App() {
  return (
    <Router>
      <Suspense fallback={<p>Loading...</p>}>
        <Routes>
          <Route path="/login" component={Login} />
        </Routes>
      </Suspense>
    </Router>
  )
}

export default App;
