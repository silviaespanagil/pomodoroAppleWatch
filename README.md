# watchOS App: Pomodoro Timer
## _Let's get some work done!_

¡Hola mundo!

In the last few days, I noticed that I had never had the chance to make an app for Apple Watch, so I thought let's make one". This a simple 🍅 Pomodoro Timer 🍅 app. I wanted it to be simple, easy to use and not distractive as the idea is to help people be more focused and productive.

So the app has a simple view that displays the remaining time ⏱️​, it allows the user to start, stop or re-start the watch anytime and a counter so you can know how many Pomodoro's 🍅 you have done! However, my favourite feature is the haptics, as I wanted the app not to be distractive so when your time is done your watch will let you know is recess time. 

Take a look!

https://github.com/silviaespanagil/pomodoroAppleWatch/assets/81619759/950a4209-ae52-4931-b6d1-1dc4c540ba8a

## Initial Requirements 📋

- Create a watchOS App
- Allow the user to set a Pomodoro timer
- Allow the user to pause or re-start the timer
- Set a counter with all the Pomodoros the user has finished
- Set a sensory feedback so the user knows when the Pomodoro finished

## Built with 🔨
- XCode
- SwiftUI

## Development ⌨️

So I decided to create a simple, not destructive view for the user to be able to see the remaining time of its Pomodoro and to be able to start, pause or restart the watch anytime the user wants. I've created a `ViewBuilder` with some parameters to manage all the buttons and avoid some duplicated code. I've also added a `ViewModel` with all the methods and values needed for the timer to work properly 

Once everything was done and properly working, I decided to add haptic feedback, because being a productivity app I didn't want the user to be aware of the remaining time and the haptic feedback is the best way to let the user know when the Pomodoro finishes.

Last but not least, I made some changes and improvements in the app accessibility. As I was using some emojis I wanted the app to be understandable and easy to use if a user is using VoiceOver as well.

## Cool stuff 💖

🫨​ **Haptics** 🫨​

Time's done? Well, there's a `sensoryFeedback` to let the user know is rest time!

💬​ **Accessibility improved** 💬​

At first, I decided to use a `GeometryReader` to set the size of the view to the watch. However, noticed that if a user needs to change font size will see the app poorly. So, with that in mind, I replaced the `GeometryReader` with a `ScrollView` and also added some specific notes so the app can be also used with Voice Over 💬​, adding some properties to let the system know the children's behaviour and to set labels that can be easily understandable by any user.

## Want to clone this repo? 🐑

If you want to clone this repo please feel free to! Go for it - and let me know if you do nay cool stuff 

