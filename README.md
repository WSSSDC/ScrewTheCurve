# ScrewTheCurve

[devpost link](https://devpost.com/software/ScrewTheCurve)

**_Arjun Sarao & Bram Ogus_**

## 💡 Inspiration

We wanted to create an app that would allow students to be easily connected based on shared classes and exam scores. This can be useful creating study groups, finding group assignment partners or even complaining about tests.

## 📱 What it does

Users create an account using their emails. They can then flesh out a small profile by filling out a bio, adding a profile picture, link social media handles (instagram,messenger, GitHub, Slack, LinkedIn, etc.), and selecting what classes they are currently taking or have already taken. Once they have set up their accounts, they can scroll through people who are in similar classes or have similar interests. If they both agree to match, their social media handles are revealed to eachother. From there, they can create plans on their desired social media platform.

### 📃 Full Feature List

- Firebase for storing userdata
- Selection of classes
- Linking social media handles
- Swipe through people who have similar classes and/or interests

## 🛠 How we built it

- **Adobe XD**: We designed the mockups in Adobe XD to figure out the UI/UX and the general flow of the app
- **Swift**: We wrote the entire app in Swift.
  - `SwiftUI`: Was used to create the frontend using various components
- **Firebase**: 
  -  `FirebaseAuth`: FirebaseAuth handles logging in and authorizations
  -  `FireStore`: Firestore acted as our database to store userdata (email, name, classes, connections, etc.)

## 🛑 Challenges we ran into

- We didn't know Swift before this so learning an entire language was quite difficult
- Figuring out a simple yet effective solution for fostering communication between students after they have matched
- Making sure that sign-in was persistant

## ✅ Accomplishments that we're proud of

- Making an entire "usable" swift app in 48 caffiene frenzy induced hours
- The UI slaps sometimes
  
## 📖 What we learned

- App development in Swift
- User account storage in Firebase

## 🤔 What's next for ScrewTheCurve

- Refine the user authentication process
- Incorporate ML into the bio to match users off similar bios as well
- Add self reporting scores so we can also match users off exam scores
- Create time-limited events for assignment group creation


![tech_stack](https://user-images.githubusercontent.com/47152801/150666056-da50b7af-9657-4dee-8637-f741f375fa0a.png)

## 🖼 Gallery

![introscreen](https://user-images.githubusercontent.com/47152801/150665849-2612e4dc-fb0c-46c8-b5a7-ebf4886cbc9f.png)
![sign_up](https://user-images.githubusercontent.com/47152801/150665863-b612347d-2d80-42d9-8ef4-687bc4bcf862.png)
![class_selection](https://user-images.githubusercontent.com/47152801/150665850-c638321f-e191-4723-a417-b3fb8b0b8bb0.png)
![connections](https://user-images.githubusercontent.com/47152801/150665848-dc1bf279-7561-4386-a886-53d6cf7fe436.png)
![connection_made](https://user-images.githubusercontent.com/47152801/150665860-6b38f0d7-6ea9-41f0-9605-30416749db91.png)

## 💻 Lines of Code

- 775 Lines of Swift Code

## 🙇‍♂️ Acknowledgements

We would like to thank McHacks 9 for the opportunity to create and develop our idea.
