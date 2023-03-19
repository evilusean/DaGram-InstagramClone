//import Firebase from 'firebase/app';
//import 'firebase/firestore';
//import 'firebase/auth'
//new version of firebase added /compat - fix works
import Firebase from 'firebase/compat/app';
import 'firebase/compat/firestore';
import 'firebase/compat/auth'


//Import seed file,
//import { seedDatabase } from '../seed';
//Firebase Config Information
const config = {
    apiKey: "AIzaSyBv540S56U6-jxxAl8EgeFVzYrXhN4IxRk",
    authDomain: "dagram-react.firebaseapp.com",
    projectId: "dagram-react",
    storageBucket: "dagram-react.appspot.com",
    messagingSenderId: "670352114563",
    appId: "1:670352114563:web:ba5dfab4cb4d74a632acb6"
};
//initialize firebase app
const firebase = Firebase.initializeApp(config);
const { FieldValue } = Firebase.firestore;

//Run seed, only once! Ran successfully, data uploaded to firebase.
//seedDatabase(firebase);

export { firebase, FieldValue };