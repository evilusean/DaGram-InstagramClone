// import React from 'react';
// import ReactDOM from 'react-dom/client';
// import App from './App';
// import FirebaseContext from './context/firebase';
// import { firebase, FieldValue } from './lib/firebase';
// import './styles/app.css';

// const root = ReactDOM.createRoot(document.getElementById('root'));
// root.render(
//   <FirebaseContext.Provider value={{ firebase, FieldValue }}>
//     <App />
//   </FirebaseContext.Provider>
// );

import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import FirebaseContext from './context/firebase';
import { firebase, FieldValue } from './lib/firebase';
import './styles/app.css';

ReactDOM.render(
  <FirebaseContext.Provider value={{ firebase, FieldValue }}>
    <App />
  </FirebaseContext.Provider>,
  document.getElementById('root')
);