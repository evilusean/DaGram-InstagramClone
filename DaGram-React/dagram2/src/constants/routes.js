export const DASHBOARD = '/';
//DASHBOARD is the default main page
export const LOGIN = '/login';
//routes.js is used to create constant variables that can be used for all pages
export const SIGN_UP = '/signup';
export const PROFILE = '/p/:username';
//:username will be replaced, with user input 
export const NOT_FOUND = '/not-found';
//sends back an error code from a client side app, HTTP Error 404