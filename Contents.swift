import UIKit

//Intent: I want to create a facebook profile class that takes in different properties each time a user creates a facebook profile.
//Data type: Strings, Int, and Arrays

class FacebookProfile{
    //Section 1. Class attributes - every class is going to have these
    //These are going to be our initializers
    //These will change each time we decide to create a NEW facebook
    var profileName : String
    var profileAge : Int
    var profileBio : String
    var profileSchool : String
    var profileFriendList : [String]
    var profileBirthday : String
    var relationshipStatus : String
    var profileJob : String
    
    //Section 1.5. Class constants - The relationship statuses here will never change. (But the inputter can choose a certain "bubble".)
    //The let keyword keeps it from changing
    
    let relationshipStatusOne = "In a relationship" //rep by num. 1
    let relationshipStatusTwo = "Single" //rep by num. 2
    let relationshipStatusThree = "It's complicated" //rep by num. 3
    let relationshipStatusFour = "Married" //rep by num. 4
    
    //Intention: Create an itializer that will take in each user's info
    
    init(){
        profileName = "New User"
        profileAge = 0 //Maybe this is a design flaw that we may want to fix later on
        profileBio = "This is a profile"
        profileJob = ""
        profileSchool = ""
        profileBirthday = ""
        profileFriendList = [String]()
        //we will need to code a special function for our friendslist
        relationshipStatus = relationshipStatusThree //another design flaw that it will always default to "its complicated"
        //for r.status - we will need to code a function for this to work
    }
    
    //Section 2. Functions that will support our Facebook Profile
    
    //Create a function that sets a profile's name by taking in an argument -- use the Scholars class example if you're stuck
    //This serves as a "setting function" -- where I am essentially setting my fb profile name
    func setProfileName(userName: String) {
        profileName = userName
    }

    func checkEverything() {
        print(profileName)
    }
    

}
//We are creating an obj from our facebook profile class here
var mairasFacebook = FacebookProfile()

//If I wanna modify Maira's fb, I would call upon the obj I created here:
//When you want to use a func in a Class, you would use a period behind the obj name and you write the func name. EX: I want to set a profile name, so I use .setProfileName (Calls upon the func setProfileName)
mairasFacebook.setProfileName(userName: "Maira FB")
mairasFacebook.checkEverything()
