import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import FirebaseContext from './context/firebase';
import { firebase, FieldValue } from './lib/firebase';
import './styles/app.css'
//import { createRoot } from "react-dom/client";
import { render } from 'react-dom';

//const root = ReactDOM.createRoot(document.getElementById("root"));

//root.render(
//    <FirebaseContext.Provider value = {{ firebase, FieldValue }}>
//   <App />,
//    </FirebaseContext.Provider>,
//);

// ReactDOM.render(
//   <FirebaseContext.Provider value={{ firebase, FieldValue }}>
//     <React.StrictMode>
//       <App />
//     </React.StrictMode>
//   </FirebaseContext.Provider>,
//   document.getElementById('root')
// );

const root = document.getElementById('root') 
render(
  <FirebaseContext.Provider value={{ firebase, FieldValue }}>
    <React.StrictMode>
      <App />
    </React.StrictMode>
  </FirebaseContext.Provider>,
  root
);