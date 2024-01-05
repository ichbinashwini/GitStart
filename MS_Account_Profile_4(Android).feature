@BDDSTORY-QA-2521
Feature: MS_Account_Profile
  Background:
    Given I am on the "eko" screen
    When I tap on the "Create Account" button
    And I enter the "auto_fname" in the text field "First Name" on the "Create Account" screen
    And I enter the "auto_lname" in the text field "Last Name" on the "Create Account" screen
    And I enter a randomly generated "Email" on the "Create Account" screen
    And I enter the "eko12345" in the text field "Password" on the "Create Account" screen
    And I tap on the "Create Account" button
    And I tap on the "Continue" button
    And I complete the "CORE2" onboarding
    And I complete FTU onboarding  
    Then I should verify "Heart Murmurs" title is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    When I swipe up the screen
    Then I should verify "I have read and understood the above Indications for Use" text is displayed on the screen
    When I "Select" the "I have read and understood the above Indications for Use" checkbox
    Then I should verify "I have read and understood the above Indications for Use" checkbox is "Selected"
    And I should verify "Next" button is enabled
    When I tap on the "Next" button
    Then I should verify "Great!" title is displayed on the screen
    When I tap on the "OK" button
    And I tap on the "Menu" navigation button
    And I tap on the "Account Profile" option
    Then I should verify "Account Profile" title is displayed on the screen

  @BDDTEST-QA-2522
  @Clinic_Automation
  @High
  @Unit_Test
  Scenario: MS_ AP Name and Email
    When I tap on the "Name and Email" option
    Then I should verify "First Name" field with "auto_fname" is displayed on the screen
    And I should verify "Last Name" field with "auto_lname" is displayed on the screen
    And I should verify stored "Email" is displayed on the screen
    And I should verify "Enter Password" field with "" is displayed on the screen
    And I clear the "First Name" field
    When I enter the "Autofname1" in the text field "First Name" on the "Name and Email" screen
    Then I clear the "Last Name" field
    When I enter the "Autolname1" in the text field "Last Name" on the "Name and Email" screen
    And I enter the "eko12345" in the text field "Enter Password" on the "Name and Email" screen
    And I tap on the "eye" icon to the "Enter Password" field
    Then I should verify the "Enter Password" is unmasked on the "Name and Email" screen
    When I tap on the "Save" label button
    Then I should verify "Account Profile" title is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "Autofname1 Autolname1" text is displayed on the screen

  @BDDTEST-QA-2523
  @Clinic_Automation
  @High
  @Unit_Test
  Scenario: MS_AP Password
    When I tap on the "Password" option
    Then I should verify "Password" title is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    When I enter the "eko12345" in the text field "Enter Current Password" on the "Password" screen
    And I enter the "eko123456" in the text field "Enter New Password" on the "Password" screen
    And I enter the "eko123456" in the text field "Re-enter New Password" on the "Password" screen
    And I tap on the "eye" icon to the "Enter Current Password" field
    And I tap on the "eye" icon to the "Enter New Password" field
    And I tap on the "eye" icon to the "Re-enter New Password" field
    Then I should verify the "Enter Current Password" is unmasked on the "Password" screen
    And I should verify the "Enter New Password" is unmasked on the "Password" screen
    And I should verify the "Re-enter New Password" is unmasked on the "Password" screen
    When I tap on the "Save" label button 
    And I tap on the "OK" button on the alert
    Then I should verify "Account Profile" title is displayed on the screen
    When I tap on the "Back" label button
    And I tap on the "Log Out" label button
    Then I should verify "Log In" title is displayed on the screen
    When I enter the stored "Email" on the "Log In" screen 
    And I enter the "eko123456" in the text field "Password" on the "Log In" screen
    And I tap on the "Log In" button
    Then I should verify "Welcome!" text is displayed on the screen

 

  @BDDTEST-QA-3005
  @Clinic_Automation
  @High
  @Unit_Test
  Scenario Outline: MS_AP Name and Email Validation (Android only)
    When I tap on the "Name and Email" option
    Then I should verify "Name and Email" title is displayed on the screen
    When I enter the "<First Name>" in the text field "First Name" on the "Name and Email" screen
    And I enter the "<Last Name>" in the text field "Last Name" on the "Name and Email" screen
    And I enter the "<Email>" in the text field "Email" on the "Name and Email" screen
    And I enter the "<Password>" in the text field "Enter Password" on the "Name and Email" screen
    And I tap on the "Save" label button
    Then I should verify "<Error Alert>" text is displayed on the alert

    Examples:
    | First Name | Last Name | Email                      | Password | Error Alert                                              |
    |            | plname    | testingekohealth@gmail.com | eko12345 | First name can't be empty                             |
    | pfname     |           | testingekohealth@gmail.com | eko12345 | Last name can't be empty                             |
    | pfname     | plname    |                            | eko12345 | Email name can't be empty                           |
    | pfname     | plname    | test                       | eko12345 | Email is invalid                       |
    | pfname     | plname    | testingekohealth@gmail.com | eko1234  | Email or password you entered does not match our records |

  @BDDTEST-QA-3006
  @Clinic_Automation
  @High
  @Unit_Test
  Scenario Outline: MS_AP Password field validation (Android only)
    When I tap on the "Password" option
    And I enter the "<Current Password>" in the text field "Enter Current Password" on the "Password" screen
    And I enter the "<New Password>" in the text field "Enter New Password" on the "Password" screen
    And I enter the "<Re-enter New Password>" in the text field "Re-enter New Password" on the "Password" screen
    And I tap on the "Save" label button
    Then I should verify "<Error Alert>" text is displayed on the alert
    When I tap on the "OK" button on the alert
    Then I should verify "Password" title is displayed on the screen

    Examples:
    | Current Password | New Password | Re-enter New Password    |                       Error Alert                         |
    | eko12345          | test3456      | test4567               | The passwords entered do not match. Please try again.     |
    | test1234         | test1234567  | test1234567              | Incorrect password |
    | eko12345         |  test345      | test456                 | Your password must be at least 8 characters long          |

 