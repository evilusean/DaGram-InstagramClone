<p align="left">  
<img src="https://github.com/evilusean/DaGram-InstagramClone/blob/main/Images/DaGram.jpg?raw=true"</left>  
</p>

# DaGram-InstagramClone

I don't use social media, I make my own; ME-DIY-A. </br>
DaGram is an Instagram clone with a responsive design that works on Android/iOS/Web Browsers. </br>
It is built using flutter for frontend and firebase for backend. </br>
Uses Firebase Core/Cloud Firestore/Firebase Auth/Firebase Storage </br>
Features include: Signup, sign in authentication, upload photos, search users, like posts, follow/unfollow users, comment on posts, and more.

<p align="center">  
<img src="https://github.com/evilusean/DaGram-InstagramClone/blob/main/Images/DemoPics/ProjectDisplay.jpg?raw=true"</center>  
</p>

<p align="left">  
<img src="https://github.com/evilusean/DaGram-InstagramClone/blob/main/Images/flutter%20doctor.jpg?raw=true"</left>  
</p>

After installing flutter you need to install all the dependancies to run the emulators for testing the code. </br>
It took me almost a day and a half of work to figure out why the emulation did not initially work when testing my code, </br>
Emulation works, requires haxm 7.6.5 NOT 7.8 to work with flutter/android studio emulation, requires a manual install to fix. </br>

## Responsive Design(Works on HTML Web Browswers/Android/iOS):

<img src="https://github.com/evilusean/DaGram-InstagramClone/blob/main/Images/DemoPics/FinalResponsive.jpg?raw=true" width="600">

<p align="left">  
<img src="https://raw.githubusercontent.com/evilusean/DaGram-InstagramClone/main/Images/DemoPics/FilesList.jpg"</left>  
</p>

## Files List:

Flutter works by creating one set of code using it's language 'dart' that is then refactored into workable languages for each iOS/Android/HTML Web browser. <br>
So you only need to write one set of code using flutters dart language to get it working on all major platforms. </br>
Since I've written over 1000 lines of code on this project, instead of going over each line I will show you a cursory view of the functions in each one. Written in the dart language under the 'lib' folder initialized from 'main.dart' </br>
-(Lib): Our Parent Directory, contains all other files for the main program. </br>
  -main.dart: contains app initializiation for responsive design, and holds api key information for firebase authorization. </br>
-(Models): Creates Classes/variables for later use that get data from firebase using 'snapshots' to map data to our variables. </br>
  -post.dart: used for posting data and profile sections. </br>
  -user.dart: used for getting data on users </br>
-(Providers):Contains one file, 'user_provider.dart', which syncs with Firebase Authentication and 'auth_methods'. </br>
-(Resources):Contains all the methods used in our program. </br>
  -auth_methods.dart: Has 2 functions, create a new user and add it to our Firebase, and authenticate a user already entered. </br>
  -firestore_metods.dart: Has 5 functions, create a post, delete a post, comment on posts, like posts, and follow/unfollow users. </br>
  -storage_methods.dart: Used to add images to firebase_storage uses a uuid(Unique identifier) to generate a code for later use. </br>
-(Responsive): Contains all the files required for determining whether to use the web or mobile screen layout depending on pixels(600). </br>
  -mobile_screen_layout.dart: contains all idiosyncracies for mobile layout.</br>
  -responsive_layout_screen.dart: contains function to determine which screen to use by getting user screen size.</br>
  -web_screen_layout.dart: contains all idiosyncracies for web layout like top navigation bar.</br>
-(Screens):Contains all the various screens the user can select.</br>
  -add_post_screen.dart:contains code on posting an image to firebase, with phone, gallery, cancel, and comments. </br>
  -comments_screen.dart:allows you to post/retreive comments on users posts.</br>
  -feed_screen.dart:gets posts as snapshots and loads them into your feed screen. </br>
  -login_screen.dart:allows you to signup/authenticate with firebase. </br>
  -profile_screen.dart:contains the user profile and all their posts signout on users account, and follow/unfollow other users.</br>
  -search_screen.dart: allows you to search users on firebase, also has a grid layout of recent user posts. </br>
  -signup_screen.dart: where you are redirected/pushed after clicking 'Signup' on login screen. Requires a picture/username/email/PW/bio.</br>
-(Utils):Contains colors used for styling and global variables, as well as image_picker widget for selecting an image. </br>
-(Widgets):Contains all custom reusable widgets used in app. </br>
  -comment_card.dart: used for 'comments_screen', creates layout/styling for each individual comment, reusable. </br>
  -follow_button.dart: used on profile page of another user to 'follow'. </br>
  -like_animation.dart: used to like posts in the 'feed_screen' on either clicking like or double tapping photo. </br>
  -post_card.dart: contains layout for each post by users, can redirect to the comment section of each post, also has likes and responsive layout. </br>
  -text_field_input.dart: contains reusable code layout for text inputs, just replace parameters with what is needed. </br>
Other notable files:</br>
-(Android): contains build.gradle which is used for creating the Android app. </br>
-(Build): contains all external dependancies/packages such as firebase/image_picker </br>
-(iOS): Contains iOS app, requires a mac with XCode to run simulation/emulator correctly. </br>
-(Pubspec.yaml):Contains all flutter dependancies(cloud_firestore, firebase_auth, firebase_core, firebase_storage, flutter_svg, image_picker, uuid). </br>

