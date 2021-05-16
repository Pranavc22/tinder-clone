# Chill - The Tinder Clone App

Chill is a clone of the famous app, tinder. It is made entirely using Flutter and BLoC.

## Introduction

Chill is a very basic app which provides almost all the basic functionalities that are available in the dating app, Tinder.
 
The user can sign up to the app using an email and password. They can setup their profile with necessary details. The app is then divided into three different sections: Searching, Matches and Chats. 

In the Searching section, the user can look at the other user profiles and like/dislike them. 

In the Matches section, the user would be able to see whom they have matches with and who has liked them. The user can then decide to like back and take it forward by chatting with them. 

The Chats section is a basic chat screen with all the user profiles listed out and the user can chat with the users they wish to do so. 

I use Firestore and Firebase to authenticate the users and store all the user data. 

## Concepts Learned

This small project has made me learn a lot of new concepts in topics like Firebase, Firestore, BLoC and multiple plugins. Some of the new concepts learned were:
- Firebase email sign-in authentication. 
- Firestore cloud storage system.
- Firebase database setup and using it. 
- BLoC setup, more knowledge on how it integrates the whole app and handles events and states. 
- Multiple new plugins: equatable, rxdart, file_picker, font_awesome_flutter, flutter_datetime_picker, geolocator, eva_icons_flutter, extended_image, timeago and uuid

## Resources

Here are some of the resources that helped me build the app: 
- [Video Tutorial on how to build the app by Waga Odongo](https://www.youtube.com/playlist?list=PLdBY1aYxSpPVokznNKIg3dmdeeJHiHF9Z)
- [BLoC package for Flutter.](https://pub.dev/packages/flutter_bloc)
- [BLoC Migration Guide](https://bloclibrary.dev/#/migration?id=migration-guide)
- [font_awesome_flutter package](https://pub.dev/packages/font_awesome_flutter/install)
- [flutter_datetime_picker package](https://pub.dev/packages/flutter_datetime_picker/install)
- [geolocator package](https://pub.dev/packages/geolocator/install)
- [file_picker package](https://pub.dev/packages/file_picker/install)
- [eva_icons_flutter package](https://pub.dev/packages/eva_icons_flutter/install)
- [extended_image package](https://pub.dev/packages/extended_image/install)
- [timeago package](https://pub.dev/packages/timeago/install)
- [uuid package](https://pub.dev/packages/uuid/install)
- I would recommend using the BLoC plugin in your IDE. It sets up a lot of BLoC code. [Plugin Link](https://plugins.jetbrains.com/plugin/12129-bloc)
- [Google Cloud Storage usage documentation](https://firebase.flutter.dev/docs/storage/usage/)
- [Google Cloud Firestore usage documentation](https://firebase.flutter.dev/docs/firestore/usage/)