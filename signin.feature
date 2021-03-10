Feature: Sign in On Amazon Website
 This scenario will only work if automationtest not detected by amazon automation system,
 therefore the test will be broke if amazon pop captcha in the middle of steps.

Background: User on Amazon Main Page
 Given User at amazon.com page
 When User click sign in link
 Then User at sign in page

@scenario1
Scenario: User enter not exist email address
 When User enter "samplefortest@gmail.com" on email address
 And User click Continue button
 Then User will be prompted by "We cannot find an account with that email address" alert

@scenario2
Scenario: User enter exist email address
 When User enter "youremail@gmail.com" on email address
 And User click Continue button
 When User enter "yourpassword" as password
 And User click Sign-in button
 Then User will be redirect to OTP verification page
