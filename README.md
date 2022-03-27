# Code Blanch

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Yelp style app designed to specifically rate the food in MHC's Blanchard Hall. It would show the ratings for the food available on a certain day. 

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Social / Food ratings 
- **Mobile:** This app is limited to only mobiles due to the convenience of uploading pictures. 
- **Story:** Analyzes daily meals at the dining hall and then would give a rating out of 5 stars. Students at MHC would have the ability to upload their food combinations and their specific ratings, as this app is collaborative.
- **Market:** The market would primarily be Mount Holyoke students, although Mount Holyoke faculty and staff might also find it useful. 
- **Habit:** The average user would use the app 1-4 times a day. The user has the opportunity to solely use the app or to publish reviews and add pictures of the food.
- **Scope:** The app would not be particularly challenging to build. This app gives us the freedom to only include the food in Blanchard Hall, or to expand the structure to all of the Five Colleges.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Sharon's Part
* [x] User can view launch screen
* [ ] User can log in/ logout 
* [ ] User can sign up (with mtholyoke account)
    
* Carlin's Part
    * (User can leave a ratings and review of their food)
    * User can upload pictures of their food
    * User can add their favorite food combinations
    
* Ines's Part
    * User can view other people's reviews without logging in
    * User can view today's menu 

**Optional Nice-to-have Stories**

* User can upload pictures of their food
* User can add their favorite food combinations
* User can choose to leave an anonymous review
* User can add filters based on dietary restrictions

### 2. Screen Archetypes

* Launch Screen
   * user can view launch screen
   * MHC dining letters/logo
* Daily Blanch menu and the corresponding food ratings
   * User can view other people's reviews/pictures
   * Button to allow user to add a review
   * User can add filters based on dietary restrictions
* Login Screen
* Review Screen 
    * User can write a review/rate foods
    * User can upload a picture of their food
* Settings Screen


### 3. Navigation

**Tab Navigation** (Tab to Screen)
* First Tab - Search Menu and Find ratings (Twitter)
* Main(Second) Tab -  Daily Menu with Rating (Yelp)
* Third Tab - Settings/ Profile Page 

**Flow Navigation** (Screen to Screen)

* Main Menu
   * Button to Log in 
   * Button to add a review
* Add a review
   * Button to go back to main
* Login
   * Button to go back to main

### Digital Wireframes & Mockups

<img src="http://g.recordit.co/A3h6yLTF7J.gif" width=600>
gif

(![](https://i.imgur.com/kjIwC63.png)
png

link to our digital wireframes : https://www.figma.com/file/KVwZhJYYAejMtPUAjynuve/codeBlanch

### [BONUS] Interactive Prototype

## Schema 
Review
| Property    | Type   | Description                         |
| ----------- | ------ | ----------------------------------- |
| userName    | String | name of the logged in user          |
| reviewText  | String | the review left by the user         |
| reviewImage | Image  | optional image uploaded by the user |
| dateUploaded | DateTime | the date the review was uploaded |

Community tab

| Property     | Type   | Description                                 |
| ------------ | ------ | ------------------------------------------- |
| userName     | String | username of the user the uploaded the combo |
| comboName    | String | name of the combo given by the user|
| comboImage   | Image  | optional image uploaded by the user |
| comboDescrip | String | Description of the combo given by the user  |
| postType | String | The type of post |

Categories

| Property | Type | Description |
| -------- | -------- | -------- |
| classicsButton | Button | Button that takes you to classics menu |
| grillButton | Button | Button that takes you to grill menu |
| globalButton | Button | Button that takes you to global menu |
| wokButton | Button | Button that takes you to wok menu |
| hallalButton | Button | Button that takes you to hallal menu |
| kosherButton | Button | Button that takes you to kosher menu |
| harvestButton| Button | Button that takes you to harvest menu|

Account

| Property | Type | Description |
| -------- | -------- | -------- |
| remainingSwipes | String | A number with the amount of swipes the user has left|
| favImage | Image | the picture of your favorited foods |
| savedFoods | String | the name of food you have saved |
| ratedFood | String | the name of foods you have rated |

Login screen

| Property | Type | Description |
| -------- | -------- | -------- |
| username | textField | Text field to enter the username |
| password |textField | Text field to enter a password |
| loginButton | Button | Button to login |
| registerButton | Button | Button to register |

Item

| Property | Type | Description |
| -------- | ---- | ----------- |
| foodLabel | String | Name of the food |
| ingredientLabel | String | Ingredients in the food |
| addReview | Button | Button that takes you to review page |
| saveFood | Button | Button to save the food |

Main Screen

| Property | Type | Description |
| -------- | -------- | -------- |
| loginPageButton | Button | Button that takes the user to the login/register page |
| viewMenuButton | Button | Button that takes the user to the menu |


### Models
[Add table of models]
### Networking
* Request API to mtholyoke dining hall
* Profile Screen
    * (Read/GET) Ask user to log in 
* Main Menu Screen
    * (Read/GET) Query all posts where a review and rating
* Make a review Screen
    * (Create/POST) Create a new post object
    * (Create/POST) Create a new image post
* Settings
    * (Read/GET) Get what specific restrictions the user wants
