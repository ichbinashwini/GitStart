@BDDSTORY-QA-3143
@CORE500
Feature: CORE500_Onboarding_Automation
  @BDDTEST-QA-2459
  @Clinic_Automation
  @High
  @Unit_Test
  Scenario: ON  Successful Sign In
    Given I am on the "Eko" screen
    When I tap on the "Log In" label button
    And I enter the "testekohealth+onboarding@gmail.com" in the text field "Email" on the "Log In" screen
    And I enter the "eko12345" in the text field "Password" on the "Log In" screen
    When I tap on the "eye" icon to the "Password" field
    Then I should verify the "Password" is unmasked on the "Log In" screen
    When I tap on the "Log In" button
    Then I should verify "Select your Eko Device" title is displayed on the screen
    When I tap on the "Eko DUO ECG + Digital Stethoscope" card
    And I tap on the "Next" button
    And I tap on the "Next" button
    And I tap on the "Finish" button
    Then I should verify "Listen" title is displayed on the screen

  @BDDTEST-QA-2460
  @High
  @Unit_Test
  @clinic_automation
  Scenario: ON Terms and privacy policy on sign in screen
    # https://ekohealth.atlassian.net/browse/CLINIC-80
    # https://ekohealth.atlassian.net/browse/CLINIC-357
    Given I am on the "Eko" screen
    When I tap on the "Log In" label button 
    And I tap on the "Terms" linked text on the "Log In" screen 
    #Then I should verify "Terms of Service" title is displayed on the screen
    And I close the web view
    Then I should verify "Log In" title is displayed on the screen
    When I tap on the "Privacy Policy" linked text on the "Log In" screen
    #Then I should verify "Privacy Policy" title is displayed on the screen
    When I close the web view
    Then I should verify "Log In" title is displayed on the screen

  @BDDTEST-QA-2462
  @Clinic_Automation
  @Low
  @Unit_Test
  Scenario: ON Account Details UI
    # https://ekohealth.atlassian.net/browse/CLINIC-70 (IOS)
    # https://ekohealth.atlassian.net/browse/CLINIC-63(Android)
    # https://ekohealth.atlassian.net/browse/CLINIC-3116 (IOS)
    # https://ekohealth.atlassian.net/browse/CLINIC-3117(Android)

    Given I am on the "Eko" screen
    When I tap on the "Create Account" button
    And I enter a randomly generated "First Name" on the "Create Account" screen
    And I enter a randomly generated "Last Name" on the "Create Account" screen
    And I enter a randomly generated "Email" on the "Create Account" screen
    And I enter the "eko12345" in the text field "Password" on the "Create Account" screen
    When I tap on the "Create Account" button
    Then I should verify "Account Details" title is displayed on the screen
    And I should verify "Please provide a few additional details for more personalized app experience" text is displayed on the screen
    And I should verify "Provider Type" option is displayed on the screen
    And I should verify "Specialty" option is displayed on the screen
    And I should verify "Practice Type" option is displayed on the screen
    And I should verify "Continue" button is displayed on the screen
    #Verify the Provider Type
    When I tap on the "Provider Type" option
    Then I should verify "Back arrow" button is displayed on the screen
    And I should verify "MD, RN, NP,LPN, Hospitalist, EMT, DO, PA, MA, DVM, Student, Resporatory Therapist, Other" options are displayed on the screen
    When I tap on the "RN" option
    Then I should verify "Provider Type" option has value "RN"
    #Verify the Specialty Type
    When I tap on the "Specialty" option
    Then I should verify "Internal Medicine, Family Medicine, Primary Care, Hospital Care, Emergency Medicine, Urgent Care, Cardiology, Pulmonology, Pediatrics, Geriatrics, Nephrology, Veterinary Care, Critical Care, Other" options are displayed on the screen
    When I tap on the "Internal Medicine" option
    Then I should verify "Provider Type" option has value "Internal Medicine"
    #Verify the Practice Type
    When I tap on the "Practice Type" option
    Then I should verify "Hospital, Clinic (Hospital-Owned), Private Practice, Nursing Facility, Education, other" options are displayed on the screen
    When I tap on the "Hospital" option
    Then I should verify "Provider Type" option has value "Internal Medicine"

  @BDDTEST-QA-2498
  @Clinic_Automation
  @Low
  @Unit_Test
  Scenario: ON Create Account UI
    # https://ekohealth.atlassian.net/browse/CLINIC-78(IOS)
    # https://ekohealth.atlassian.net/browse/CLINIC-356(Android)

    Given I am on "Eko" screen
    When I tap on the "Create Account" button
    Then I should verify "Create Account" title is displayed on the screen
    And I should verify watermark "First Name" text is displayed in the text field "First Name"
    And I should verify watermark "Last Name" text is displayed in the text field "Last Name"
    And I should verify watermark "Email" text is displayed in the text field "Email"
    And I should verify "You'll need to confirm your email later" text is displayed on the screen
    And I should verify watermark "Password" text is displayed in the text field "Password"
    And I should verify "By creating an account,you confirm that you are a licensed healthcare professional.You also agree to Eko's Term and Privacy Policy" text is displayed on the screen
    And I should verify "Create Account" button displayed on the screen
    And I should verify "Opt-in to receive emails from Eko about company updates.You may unsubscribe at any time" checkbox is displayed on the screen
    And I should verify "Opt-in to receive emails from Eko about company updates.You may unsubscribe at any time" checkbox is "Selected"
    And I should verify "Already have an account?" text is displayed on the screen
    And I should verify "Log In" label button is displayed on the screen

  @BDDTEST-QA-2499
  @Clinic_Automation
  @Low
  @Unit_Test
  Scenario: ON Marketing Splash Screens
    # https://ekohealth.atlassian.net/browse/CLINIC-985 (IOS)
    # https://ekohealth.atlassian.net/browse/CLINIC-986 (Android)
    # https://ekohealth.atlassian.net/browse/CLINIC-1418 (IOS)
    # https://ekohealth.atlassian.net/browse/CLINIC-1339(IOS)
    # https://ekohealth.atlassian.net/browse/CLINIC-1341(Android)

    Given I am on the "Eko" screen
    # screen 1
    Then I should verify "Reliable Decision Support" title is displayed on the screen
    And I should verify "FDA-cleared automated disease detection helps confirm what you’re hearing and seeing." text is displayed on the screen
    And I should see "Create Account" button is displayed on the screen
    And I should see "Already have an account?" text is displayed on the screen
    And I should verify "Log In" label button is displayed on the screen
    # screen 2
    When I swipe left the screen
    Then I should verify "Wireless Workflow" title is displayed on the screen
    And I should verify "Stay mobile in a fast-paced clinic.One-tap pairing ensures minimal disruption to your physical exam." text is displayed on the screen
    And I should verify "Create Account" button is displayed on the screen
    And I should verify "Already have an account?" text is displayed on the screen
    And I should verify "Log In" label button is displayed on the screen
    # screen 3
    When I swipe left the screen
    Then I should verify "Guided Assessments" title is displayed on the screen
    And I should verify "Consistent and intuitive assessment modes made easy for any clinican to follow." text is displayed on the screen
    And I should see "Create Account" button is displayed on the screen
    And I should see "Already have an account?" text is displayed on the screen
    And I should verify "Log In" label button is displayed on the screen
    #Screen 4
    When I swipe left the screen 
    Then I should verify "Expertise, Anywhere" title is displayed on the screen
    And I should verify "Share a comprehensive report or secure live stream with a trusted reference in just a few clicks." text is displayed on the screen
    And I should see "Create Account" label button is displayed on the screen
    And I should see "Already have an account?" text is displayed on the screen
    And I should verify "Log In" label button is displayed on the screen
    When I swipe right the screen
    And I swipe right the screen
    And I swipe right the screen
    Then I should verify "Reliable Decision Support" title is displayed on the screen

  @BDDTEST-QA-2548
  @Clinic_Automation
  @Low
  @Unit_Test
  Scenario: ON Verify Terms and Privacy Policy links on the sign up form
    # https://ekohealth.atlassian.net/browse/CLINIC-78(IOS)
    # https://ekohealth.atlassian.net/browse/CLINIC-356(Android)


    Given I am on the "Eko" screen
    When I tap on the "Create Account" button
    When I tap on the "Terms" linked text on the "Create Account" screen 
    Then I should verify "Terms and Conditions" title is displayed on the screen
    When I close the webview
    Then I should verify "Create Account" title is displayed on the screen
    When I tap on the "Privacy Policy" linked text on the "Create Account" screen
    Then I should verify "Privacy Policy" title is displayed on the screen
    When I close the webview
    Then I should verify "Create Account" title is displayed on the screen

  @BDDTEST-QA-2558
  @Clinic_Automation
  @Low
  @Unit_Test
  Scenario: ON Forgot Password UI
    # https://ekohealth.atlassian.net/browse/CLINIC-347
    # https://ekohealth.atlassian.net/browse/CLINIC-358

    Given I am on the "Eko" screen
    When I tap on the "Log In" label button
    When I tap on the "Forgot Password" label button
    Then I should verify "Forgot Password?" text is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "Log In" title is displayed on the screen
    When I tap on the "Forgot Password?" text
    Then I should verify "Forgot Password?" title is displayed on the screen
    And I should verify "We will send an email with a new link to sign in." text is displayed on the screen
    And I should verify watermark "Email" text is displayed in the text field "Email"
    When I fill in the "testekohealth+onboarding@gmail.com" in the text field "Email"
    And I tap on the "Reset Password" button
    Then I should verify "Check Your Email" title is displayed on the screen
    And I should verify "We have sent an email to this address with a new link to sign in." text is displayed on the screen
    And I should verify "testekohealth+onboarding@gmail.com" text is displayed on the screen
    And I should verify "Already have an account? Log In" text is displayed on the screen
    When I tap on the "Log In" label button
    Then I should verify "Log In" title is displayed on the screen

  @BDDTEST-QA-2593
  @Clinic_Automation
  @High
  @Unit_Test
  Scenario Outline: ON Sign in field level Error Validation 
    # https://ekohealth.atlassian.net/browse/CLINIC-80
    # https://ekohealth.atlassian.net/browse/CLINIC-357
    
    Given I am on the "Eko" screen
    When I tap on the "Log In" label button
    When I enter the "<Email>" in the text field "Email" on the "Log In" screen
    And I enter the "<Password>" in the text field "Password" on the "Log In" screen
    And I tap on the "Log In" button
    Then I should verify "<Error Message>" text is displayed on the screen
    Examples:
    | Email                      | Password   | Error Message                                            |
    |                            |            | Please enter valid email address                         |
    | testingekohealth@gmail.com |            | Please enter valid password                              |
    |                            | eko12345   | Please enter valid email address                         |

  @BDDTEST-QA-2595
  @Clinic_Automation
  @High
  @Unit_Test
  Scenario Outline: ON Sign in system level Error Validation
    # https://ekohealth.atlassian.net/browse/CLINIC-80
    # https://ekohealth.atlassian.net/browse/CLINIC-357
    Given I am on the "Eko" screen
    When I tap on the "Log In" label button
    When I enter the "<Email>" in the text field "Email" on the "Log In" screen
    And I enter the "<Password>" in the text field "Password" on the "Log In" screen
    And I tap on the "Log In" button
    Then I should verify "<Error Message>" text is displayed on the alert
    
    Examples:
    | Email                           | Password   | Error Message                                            |
    | testekohealth+menu@gmail.com    | test123456 | Email or password you entered does not match our records |

  @BDDTEST-QA-2598
  @Clinic_Automation
  @High
  @Unit_Test
  Scenario Outline: ON Field level Validation on Sign up form
    # https://ekohealth.atlassian.net/browse/CLINIC-78(IOS)
    # https://ekohealth.atlassian.net/browse/CLINIC-356(Android)

    Given I am on the "Eko" screen
    When I tap on the "Create Account" button
    Then I should verify "Create Account" title is displayed on the screen
    When I enter the "<First Name>" in the text field "First Name" on the "Create Account" screen
    And I enter the "<Last Name>" in the text field "Last Name" on the "Create Account" screen
    And I enter the "<Email>" in the text field "Email" on the "Create Account" screen
    And I enter the "<Password>" in the text field "Password" on the "Create Account" screen
    And I tap on the "Create Account" button
    Then I should verify "<Error Message>" text is displayed on the screen

    Examples:
    | First Name|Last Name  | Email                      | Password                | Error Message               |
    | f_name    |           |                            |                         |Please enter your last name  |
    | f_name    |  l_name   |                            |                         |Enter a valid email address  |
    | f_name    |  l_name   | testingekohealth@gmail.com |                         |Enter valid password         |
    | f_name    |  l_name   | test.test                  |     eko12345            |Enter a valid email address  |

  @BDDTEST-QA-2722
  @Clinic_Automation
  @High
  @Unit_Test
  Scenario: ON System level Validation on Sign up form
    # https://ekohealth.atlassian.net/browse/CLINIC-78(IOS)
    # https://ekohealth.atlassian.net/browse/CLINIC-356(Android)
    Given I am on the "Eko" screen
    When I tap on the "Create Account" button
    And I enter the "f_name" in the text field "First Name" on the "Create Account" screen
    And I enter the "l_name" in the text field "Last Name" on the "Create Account" screen
    And I enter the "ashwini.nanaware+1@coditas.com" in the text field "Email" on the "Create Account" screen
    And I enter the "eko12345" in the text field "Password" on the "Create Account" screen
    And I tap on the "Create Account" button
    Then I should verify "Email error" text is displayed on the alert
    When I tap on the "OK" button
    Then I should verify "Create Account" title is displayed on the screen

  @BDDTEST-QA-3146
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: CORE 500 Device Selection UI
    #for first time login or newly installed build
    Given I am on the "Eko" screen
    When I tap on the "Log In" label button
    And I enter the "testekohealth+onboarding@gmail.com" in the text field "Email" on the "Log In" Screen
    And I enter the "eko12345" in the text field "Password" on the "Log In" Screen
    Then I should verify "Select your Eko Device" title is displayed on the screen
    And I should verify "Which device are you setting up today?" text is displayed on the screen
    And I should verify "CORE 500™ Digital Stethoscope" card is displayed on the screen
    And I should verify "CORE 500" image is displayed on the screen
    And I should verify "Eko DUO ECG  Digital Stethescope" card is displayed on the screen
    And I should verify "3M™ Littmann® CORE Digital Stethoscope" card is displayed on the screen
    And I should verify "Eko CORE Digital Attachment" card is displayed on the screen
    And I should verify "Don't have a device?" text is displayed on the screen
    And I should verify "Shop Eko" label button is displayed on the screen
    When I tap on the "Shop Eko" label button
    Then I should verify I redirected to "Eko Devices" website
    When I close the webview
    Then I should verify "Select your Eko Device" title is displayed on the screen
    When I tap on the "CORE 500™ Digital Stethoscope" card
    Then I should verify "Attach earpiece" text is displayed on the screen

  @BDDTEST-QA-3147
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Onboarding verify Attach earpiece screen UI with CORE 500 (Android only)
    Given I am logged in as a clinician  
    Then I should verify "Which device are you setting up today?" text is displayed on the screen  
    And I should verify "CORE 500TM Digital Stethoscope" card is displayed on the screen
    And I should verify "CORE 500" image is displayed on the card
    When I tap on the "CORE 500TM Digital Stethoscope" card
    Then I should verify "Permission needed" title is displayed on the alert
    And I should verify "Eko would like to use Nearby devices to connect properly to you device" text  is displayed on the alert
    And I should verify "OK" button is displayed on the alert
    When I tap on the "OK" button
    And I tap on the "Allow" button on the permission popup 
    Then I should verify "Attach earpiece" text is displayed on the screen
    And I should verify "Plug the earpiece into the CORE 500. Twist the earpiece clockwise with a quarter turn until it locks." text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "Select your Eko Device" title is displayed  on the screen

  @BDDTEST-QA-3148
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Onboarding verify Turn on to connect screen UI with CORE 500 with device connected Android only 
    Given I am logged in as a clinician
    Then I should verify "Which device are you setting up today" text is displayed on the screen  
    And I should verify  "CORE 500 ECG + Digital Stethoscope" card is displayed on the screen
    And I should verify "CORE 500" image is displayed on the card
    When I tap on the "CORE 500 ECG + Digital Stethoscope" card
    Then I should verify "Permission needed" title is displayed on the alert #only for Android
    And I should verify "Eko would ike to use Nearby devices to connect properly to your device" text is displayed on the alert
    And I should verify "OK" button is displayed on the alert
    When I tap on the "OK" button on the alert
    And I tap on the "Allow" button on the permission popup
    Then I should verify "Permission needed" title is displayed on the alert #only for Android
    And I should verify "Eko would like to use Bluetooth services to connect properly to your device" text is displayed on the alert
    And I should verify "OK" button is displayed on the alert
    When I tap on the "OK" button on the alert
    And I tap on the "Allow" button on the permission popup
    Then I should verify "Attach earpiece" text is displayed on the screen
    And I should verify "Plug the earpiece into the CORE 500. Twist the earpiece clockwise with a quarter turn until it locks" text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "press to Turn On" text is displayed on the screen
    And I should verify "Press the top button to turn on the CORE 500. Press the side button to connect to your mobile device via Bluetooth." text is displayed on the screen
    When I press on the top button on CORE500 device
    Then I should verify "Back" label button is displayed on the screen
    And I should verify "Press to Connect" text is displayed on the screen
    #when the app detects that the nearby device is powered on and connection is getting established.
    When I press the volume up button on the Eko device 
    Then I should verify "Connected" text is displayed on the device screen
    And I should verify "Connected" status is displayed on the header
    When I tap on the "Next" button
    Then I should verify "Change audio filter" text is displayed on the screen
    When I tap on the "Back" label button

  @BDDTEST-QA-3149
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: verify Turn on to connect screen UI while onboarding CORE 500 device when the user doesn't turn on the device
    Given I am logged in as a clinician
    Then I should verify "Which device are you setting up today?" text is displayed on the screen  
    And I should verify  "CORE 500 ECG + Digital Stethoscope" card is displayed on the screen
    And I should verify "CORE 500" image is displayed on the card
    When I tap on the "CORE 500 ECG + Digital Stethoscope" card
    Then I should verify "Permission needed" title is displayed on the alert #only for Android
    And I should verify "Eko would ike to use Nearby devices to connect properly to your device" text is displayed on the alert
    And I should verify "OK" button is displayed on the alert
    When I tap on the "OK" button on the alert
    And I tap on the "Allow" button on the permission popup
    Then I should verify "Permission needed" title is displayed on the alert #only for Android
    And I should verify "Eko would ike to use Bluetooth services to connect properly to your device" text is displayed on the alert
    And I should verify "OK" button is displayed on the alert
    When I tap on the "OK" button on the alert
    And I tap on the "Deny" button on the permission popup
    Then I should verify "Attach earpiece" text is displayed on the screen
    And I should verify "Plug the earpiece into the CORE 500. Twist the earpiece clockwise with a quarter turn until it locks." text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Turn on to connect" text is displayed on the screen
    And I should verify "Press the top button to turn on the CORE 500. Press the side butto to connect to your mobile device via Bluetooth." text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    And I should verify "Not Connected" status is displayed on the header
    And I should verify "Press to connect" text is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "Attach earpiece" text is displayed on the screen

  @BDDTEST-QA-3150
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Onboarding verify Change audio filter screen UI with CORE 500
    Given I am logged in as a clinician
    Then I should verify "Which device are you setting up today?" text is displayed on the screen  
    And I should verify  "CORE 500™  Digital Stethoscope" card is displayed on the screen
    When I tap on the "CORE 500™ Digital Stethoscope" card
    Then I should verify "Attach earpiece" text is displayed on the screen
    When I tap on the "Next" button
    And I tap on the "Next" button
    Then I should verify "Change audio filter" text is displayed on the screen
    And I should verify "press the top button to change between each filter. It will change between cardiac, pulmonary, and wide." text is displayed on the screen

  @BDDTEST-QA-3151
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Onboarding verify Adjust Volume screen UI with CORE 500 
    Given I am logged in as a clinician
    Then I should verify "Which device are you setting up today?" text is displayed on the screen  
    And I should verify  "CORE 500TM Digital Stethoscope" card is displayed on the screen
    When I tap on the "CORE 500TM Digital Stethoscope" card
    Then I should verify "Attach Earpiece" text is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Turn on to connect" text is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Change audio filter" text is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Adjust Volume" text is displayed on the screen
    And I should verify "To increase the volume, press the volume up button. To decrease the volume, press the volume down button." text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    And I should verify "Back" label button is displayed on the screen

  @BDDTEST-QA-3152
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Onboarding verify the Start a Recording screen UI with CORE 500 device
    Given I am logged in as a clinician 
    Then I should verify "Which device are you setting up today?" text is displayed on the screen  
    And I should verify  "CORE 500™ Digital Stethoscope" card is displayed on the screen
    When I tap on the "CORE 500™ Digital Stethoscope" card
    Then I should verify "Attach earpiece" text is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Turn on to connect" text is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Change audio filter" text is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Adjust Volume" text is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Start a Recording" text is displayed on the screen
    And I should verify "When ready to record, long press the top button. Then long press it again to stop the recording." text is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Tips for a good signal" text is displayed on the screen
    And I should verify "Place the CORE 500™ firmly on the patient's skin. Clean the skin with 70% IPA. ECG gel is recommended for dry/hairy skin." text is displayed on the screen.
    And I should verify "Finish" button is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    When I tap on the "Finish" button
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Start recording or exam" text is displayed on the screen
    And I should verify "Tap Record to take a single recording. Tap Start Exam to take a guided, 4-point cardiac exam." text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the first dot is selected on the screen
    When I tap on the "Next" button
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Turn on wireless listening" text is displayed on the screen
    And I should verify "Tap the Audio Settings icon. Turn on Play from Headphones." text is displayed on the screen
    And I should verify "Back" button is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the second dot is selected on the screen
    When I tap on the "Next" button
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Adjust recording settings" text is displayed on the screen
    And I should verify "The recording settings are on by default. You can turn them on or off based on your preferences." text is displayed on the screen
    And I should verify "Back" button is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the third dot is selected on the screen
    When I tap on the "Next" button
    #verify Afib screen
    Then I should verify "Atrial Fibrillation" title is displayed on the screen
    And I should verify "Detects atrial fibrillation from a single lead ECG" text is displayed on the screen
    And I should verify "Does not detect other potentially life threatening arrhythmias" text is displayed on the screen
    And I should verify "If neither AFib nor sinus rhythm is detected, the analysis will return unclassified" text is displayed on the screen
    And I should verify "Possible Results" text is displayed on the screen
    And I should verify "Normal Sinus ECG Rhythm" text is displayed on the screen
    And I should verify "Atrial Fibrillation Detected" text is displayed on the screen
    And I should verify "Unclassified ECG" text is displayed on the screen
    And I should verify "Poor Quality ECG" text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    #verify Heart murmur screen
    When I tap on the "Next" button
    Then I should verify "Heart Murmurs" title is displayed on the screen
    And I should verify "Uses heart sounds to detect the presence of murmurs" text is displayed on the screen
    And I should verify "Does not classify types of murmurs" text is displayed on the screen
    And I should verify "Does not detect certain soft murmurs" text is displayed on the screen
    And I should verify "Possible Results" text is displayed on the screen
    And I should verify "Murmur Detected" text is displayed on the screen
    And I should verify "No Murmur Detected" text is displayed on the screen
    And I should verify "Poor Quality PCG" text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    When I tap on "Next" button
    #verify IFU screen
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "The Eko Analysis Software is intended to provide support to the physician in the evaluation of patients' heart sounds and ECG’s. The software analyzes simultaneous ECG and heart sounds. The software will detect the presence of suspected murmurs in the heart sounds. The software also detects the presence of atrial fibrillation and normal sinus rhythm from the ECG signal. In addition, it calculates certain cardiac time intervals such as heart rate and QRS duration." "It is not intended as a sole means of diagnosis. The interpretations of heart sounds and ECG offered by the software are only significant when used in conjunction with physician over-read and is for use on adults (> 18 years).""By continuing your use of the application, you acknowledge the following:""You have read and understand the Eko Analysis Software Indications for Use and Instructions for Use.""The Eko Analysis Software is to be used by, or under the supervision of, a healthcare professional who is trained to use, interpret, and understand its outputs." text is displyed on the screen
    When I swipe up the screen
    Then I should verify "Instructions for Use" linked text is displayed on the screen
    When I tap on the "Instructions for Use" linked text on the "Eko Analysis Indications for Use" screen 
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    When I close the web view
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "I have read and understood the above Indications for Use" checkbox is displayed on the screen
    And I should verify "Back" label button displayed on the screen
    When I select "I have read and understood the above Indications for Use" checkbox.
    Then I should verify "Next" button is enabled
    When I tap on "Next" button.
    Then I should verify "Welcome" title is displayed on the screen.
    And I should verify "Turn on your Eko Device to get started" text is displayed.

  @BDDTEST-QA-3193
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Verify "Listen" Onboarding and landing screen when CORE 500 is connected
    Given I am logged in as a clinician
    Then I should verify "Connected" status is displayed on the header
    When I tap on the "Listen" navigation button
    And I should verify waveform is displayed on the screen
    And I should verify "Record" label button is displayed on the screen
    And I should verify "Start Exam" label button is displayed on the screen
    And I should verify "Audio" label button is displayed on the screen
    And I should verify "Filter" label button is displayed on the screen
    And I should verify "BPM" text is displayed on the screen

  @BDDTEST-QA-3194
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Verify "Listen" landing screen when DUO3 is not connected
    Given I am logged in as a clinician
    Then I should verify "Not Connected" status is displayed on the header.
    And  I should verify "Welcome" text is displayed on the screen
    And I should verify "Turn on your Eko device to get started." text is displayed on the screen
    And I should verify "Connect Device" button is displayed on the screen
    When I tap on the "Connect Device" button
    Then I should verify "Choose your Eko device to connect" title is displayed on the drawer
    When I tap on the "CORE500" from device selection screen
    Then I should verify waveform is displayed on the screen
    And I should verify "Connected" status is displayed on the header

  @BDDTEST-QA-3262
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: ON_DVT FTU Landing Screen UI
    Given I am on the "Eko" screen
    When I tap on the "Create Account" button
    And I enter a randomly generated "First Name" on the "Create Account" screen
    And I enter a randomly generated "Last Name" on the "Create Account" screen
    And I enter a randomly generated "Email" on the "Create Account" screen
    And I enter the "eko12345" in the text field "Password" on the "Create Account" screen
    And I tap on the "Create Account" button
    And I complete the "CORE 500" onboarding
    And I should verify "Welcome" text is displayed on the screen
    And I should verify "Turn on your Eko device to get started" text displayed on the screen
    And I should verify "Connect Device" button is displayed on the screen.

  @BDDTEST-QA-3263
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: ON_DVT FTU Afib, Murmur, AI warning screen UI
    Given I have completed "CORE 500" onboarding 
    Then I should verify "Getting Started" header is displayed on the screen
    And I should verify "Check for signs of heart disease" text is displayed on the screen
    And I should verify "Atrial Fibrillation" text is displayed on the screen
    And I should verify "Detects atrial fibrillation from a 3-lead ECG" text is displayed on the screen
    And I should verify "Does not detect other potentially life threatening arrhythmias" text is displayed on the screen
    And I should verify "If neither AFib nor sinus rhythm is detected, the analysis will return unclassified" text is displayed on the screen
    And I should verify "Possible Results" text is displayed on the screen
    And I should verify "Normal Sinus ECG Rhythm" text is displayed on the screen
    And I should verify "Atrial Fibrillation Detected" text is displayed on the screen
    And I should verify "Unclassified ECG" text is displayed on the screen
    And I should verify "Poor Quality ECG" text is displayed on the screen
    And I should verify "Heart Murmurs" title is displayed on the screen
    And I should verify "Uses heart sounds to detect the presence of murmurs" text is displayed on the screen
    And I should verify "Does not classify types of murmurs" text is displayed on the screen
    And I should verify "Does not detect certain soft murmurs" text is displayed on the screen
    And I should verify "Possible Results" text is displayed on the screen
    And I should verify "Murmur Detected" text is displayed on the screen
    And I should verify "No Murmur Detected" text is displayed on the screen
    And I should verify "Poor Quality PCG" text is displayed on the screen
    And I should verify "Continue" button is displayed on the screen
    #verify AI Warnings Screen
    When I tap on the "Next" button
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "The Eko Analysis Software is intended to provide support to the physician in the evaluation of patients' heart sounds and ECG’s. The software analyzes simultaneous ECG and heart sounds. The software will detect the presence of suspected murmurs in the heart sounds. The software also detects the presence of atrial fibrillation and normal sinus rhythm from the ECG signal. In addition, it calculates certain cardiac time intervals such as heart rate and QRS duration." "It is not intended as a sole means of diagnosis. The interpretations of heart sounds and ECG offered by the software are only significant when used in conjunction with physician over-read and is for use on adults (> 18 years).""By continuing your use of the application, you acknowledge the following:""You have read and understand the Eko Analysis Software Indications for Use and Instructions for Use.""The Eko Analysis Software is to be used by, or under the supervision of, a healthcare professional who is trained to use, interpret, and understand its outputs." text is displyed on the screen
    When I swipe up the screen
    Then I should verify "Instructions for Use" linked text is displayed on the screen
    When I tap on the "Instructions for Use" linked text on the "Eko Analysis Indications for Use" screen 
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    When I close the web view
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "I have read and understood the above Indications for Use" checkbox is displayed on the screen
    And I should verify "Back" label button displayed on the screen
    When I select "I have read and understood the above Indications for Use" checkbox
    Then I should verify "Next" button is enabled
    When I tap on "Next" button
    Then I should verify "Record" button is displayed on the screen

  @BDDTEST-QA-3347
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: verify Turn on to connect while onboarding CORE 500 device when the user select Deny on the CORE 500 device while connecting.
    Given I am logged in as a clinician 
    Then I should verify "Which device are you setting up today?" text is displayed on the screen  
    And I should verify  "CORE 500 ECG + Digital Stethoscope" card is displayed on the screen
    And I should verify "CORE 500" image is displayed on the card
    When I tap on the "CORE 500 ECG + Digital Stethoscope" card
    Then I should verify "Attach earpiece" text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Turn on to connect" text is displayed on the screen
    And I should verify "Press the top button to turn on the CORE 500. Press the side button to connect to your mobile device via Bluetooth." text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    When I press the top button on "CORE 500" device
    And I tap on the "Cancel" button on the alert
    Then I should verify "Not Connected" status is displayed on the header
    When I tap on the "Next" label button
    Then I should verify "Change Audio Filter" text is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "Turn on to connect" text is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "Attach earpiece" text is displayed on the screen

  @BDDTEST-QA-3370
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Verify autoconnection on Onboarding screen when the CORE 500 is already paired with mobile


    Given I am on the "Select your Eko Device" screen  
    And I should verify "Which device are you setting up today" text is displayed on the screen  
    And I should verify  "CORE 500TM Digital Stethoscope" card is displayed on the screen
    And I should verify "CORE 500" image is displayed on the card
    When I tap on the "CORE 500TM Digital Stethoscope" card
    Then I should verify "Attach Earpiece" text is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Press to turn on" text is displayed on the screen
    And I should verify "Press the top button to turn on the CORE 500TM. Press the side button to connect to your mobile via bluetooth" text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    When I press the top button on "CORE 500"
    #when the app detects that the nearby device is powered on and connection is getting established.
    Then I should verify "Connected" text is displayed on the screen
    #when connection is established.
    And I should verify "Connected" status is displayed on the header

  @BDDTEST-QA-3614
  @CORE500
  @Clinic_Automation
  @Integration_Test
  Scenario: ON_FTU Landing Screen UI for CORE 500
    Given I am on the "Eko" screen
    When I tap on the "Create Account" button
    And I enter a randomly generated "First Name" on the "Create Account" screen
    And I enter a randomly generated "Last Name" on the "Create Account" screen
    And I enter a randomly generated "Email" on the "Create Account" screen
    And I enter the "eko12345" in the text field "Password" on the "Create Account" screen
    And I tap on the "Create Account" button
    And I complete the "CORE 500" onboarding
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Start recording or exam" text is displayed on the screen
    And I should verify "Tap Record to take a single recording. Tap Start Exam to take a guided, 4-point cardiac exam." text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the first dot is selected on the screen
    When I tap on the "Next" button
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Turn on wireless listening" text is displayed on the screen
    And I should verify "Tap the Audio Settings icon. Turn on Play from Headphones." text is displayed on the screen
    And I should verify "Back" button is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the second dot is selected on the screen
    When I tap on the "Next" button
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Adjust recording settings" text is displayed on the screen
    And I should verify "The recording settings are on by default. You can turn them on or off based on your preferences." text is displayed on the screen
    And I should verify "Back" button is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the third dot is selected on the screen
    When I tap on the "Next" button
    Then I should verify "Check for signs of heart disease" text is displayed on the screen
    And I swipe up the screen
    And I should verify "Next" button is displayed on the screen
    When I tap on the "Next" button
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "The Eko Analysis Software is intended to provide support to the physician in the evaluation of patients' heart sounds and ECG’s. The software analyzes simultaneous ECG and heart sounds. The software will detect the presence of suspected murmurs in the heart sounds. The software also detects the presence of atrial fibrillation and normal sinus rhythm from the ECG signal. In addition, it calculates certain cardiac time intervals such as heart rate and QRS duration." "It is not intended as a sole means of diagnosis. The interpretations of heart sounds and ECG offered by the software are only significant when used in conjunction with physician over-read and is for use on adults (> 18 years).""By continuing your use of the application, you acknowledge the following:""You have read and understand the Eko Analysis Software Indications for Use and Instructions for Use.""The Eko Analysis Software is to be used by, or under the supervision of, a healthcare professional who is trained to use, interpret, and understand its outputs." text is displyed on the screen
    When I swipe up the screen
    Then I should verify "Instructions for Use" linked text is displayed on the screen
    When I tap on the "Instructions for Use" linked text on the "Eko Analysis Indications for Use" screen 
    Then I should verify "Instructions for Use" title is displayed on the screen
    When I close the web view
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "I have read and understood the above Indications for Use" checkbox is displayed on the screen
    And I should verify "Back" label button displayed on the screen
    When I select "I have read and understood the above Indications for Use" checkbox
    Then I should verify "Next" button is enabled
    When I tap on "Next" button
    Then I should verify "Welcome!" text is displayed on the screen

  @BDDTEST-QA-3615
  @CORE500
  @Clinic_Automation
  @Integration_Test
  Scenario: ON_FTU Landing Screen UI for Core2
    Given I am on the "Eko" screen
    When I tap on the "Create Account" button
    And I enter a randomly generated "First Name" on the "Create Account" screen
    And I enter a randomly generated "Last Name" on the "Create Account" screen
    And I enter a randomly generated "Email" on the "Create Account" screen
    And I enter the "eko12345" in the text field "Password" on the "Create Account" screen
    And I tap on the "Create Account" button
    And I complete the "CORE2" onboarding
    And I connect the device
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Start recording or exam" text is displayed on the screen
    And I should verify "Tap Record to take a single recording. Tap Start Exam to take a guided, 4-point cardiac exam." text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the first dot is selected on the screen
    When I tap on the "Next" button
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Turn on wireless listening" text is displayed on the screen
    And I should verify "Tap the Audio Settings icon. Turn on Play from Headphones." text is displayed on the screen
    And I should verify "Back" button is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the second dot is selected on the screen
    When I tap on the "Next" button
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Adjust recording settings" text is displayed on the screen
    And I should verify "The recording settings are on by default. You can turn them on or off based on your preferences." text is displayed on the screen
    And I should verify "Back" button is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the third dot is selected on the screen
    When I tap on the "Next" button
    #verify Heart murmur screen
    Then I should verify "Heart Murmurs" title is displayed on the screen
    And I should verify "Uses heart sounds to detect the presence of murmurs" text is displayed on the screen
    And I should verify "Does not classify types of murmurs" text is displayed on the screen
    And I should verify "Does not detect certain soft murmurs" text is displayed on the screen
    And I should verify "Possible Results" text is displayed on the screen
    And I should verify "Murmur Detected" text is displayed on the screen
    And I should verify "No Murmur Detected" text is displayed on the screen
    And I should verify "Poor Quality PCG" text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    When I tap on "Next" button
    #verify IFU screen
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "The Eko Analysis Software is intended to provide support to the physician in the evaluation of patients' heart sounds and ECG’s. The software analyzes simultaneous ECG and heart sounds. The software will detect the presence of suspected murmurs in the heart sounds. The software also detects the presence of atrial fibrillation and normal sinus rhythm from the ECG signal. In addition, it calculates certain cardiac time intervals such as heart rate and QRS duration." "It is not intended as a sole means of diagnosis. The interpretations of heart sounds and ECG offered by the software are only significant when used in conjunction with physician over-read and is for use on adults (> 18 years).""By continuing your use of the application, you acknowledge the following:""You have read and understand the Eko Analysis Software Indications for Use and Instructions for Use.""The Eko Analysis Software is to be used by, or under the supervision of, a healthcare professional who is trained to use, interpret, and understand its outputs." text is displyed on the screen
    When I swipe up the screen
    Then I should verify "Instructions for Use" linked text is displayed on the screen
    When I tap on the "Instructions for Use" linked text on the "Eko Analysis Indications for Use" screen 
    Then I should verify "Instructions for Use" title is displayed on the screen
    When I close the web view
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "I have read and understood the above Indications for Use" checkbox is displayed on the screen
    And I should verify "Back" label button displayed on the screen
    When I select "I have read and understood the above Indications for Use" checkbox
    Then I should verify "Next" button is enabled
    When I tap on "Next" button
    Then I should verify "Great!" text is displayed on the drawer
    And I should verify "Now let’s listen to body sounds. Place your Eko device on the body to get started." text is displayed on the drawer
    And I should verify "OK" button is displayed on the drawer

  @BDDTEST-QA-3616
  @CORE500
  @Clinic_Automation
  @Integration_Test
  @clinic_manual
  Scenario: ON_FTU Landing Screen UI for DUO2
    Given I am on the "Eko" screen
    When I tap on the "Create Account" button
    And I enter a randomly generated "First Name" on the "Create Account" screen
    And I enter a randomly generated "Last Name" on the "Create Account" screen
    And I enter a randomly generated "Email" on the "Create Account" screen
    And I enter the "eko12345" in the text field "Password" on the "Create Account" screen
    And I tap on the "Create Account" button
    And I complete the "DUO2" onboarding
    And I connect the device
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Start recording or exam" text is displayed on the screen
    And I should verify "Tap Record to take a single recording. Tap Start Exam to take a guided, 4-point cardiac exam." text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the first dot is selected on the screen
    When I tap on the "Next" button
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Turn on wireless listening" text is displayed on the screen
    And I should verify "Tap the Audio Settings icon. Turn on Play from Headphones." text is displayed on the screen
    And I should verify "Back" button is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the second dot is selected on the screen
    When I tap on the "Next" button
    Then I should verify "Getting started" title is displayed on the screen
    And I should verify "Adjust recording settings" text is displayed on the screen
    And I should verify "Recording Analysis is on by default. Turn on Record Automatically to have recordings start when a good signal is detected." text is displayed on the screen
    And I should verify "Back" button is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    # And I should verify the third dot is selected on the screen
    When I tap on the "Next" button
    #verify Afib screen
    Then I should verify "Atrial Fibrillation" title is displayed on the screen
    And I should verify "Detects atrial fibrillation from a single lead ECG" text is displayed on the screen
    And I should verify "Does not detect other potentially life threatening arrhythmias" text is displayed on the screen
    And I should verify "If neither AFib nor sinus rhythm is detected, the analysis will return unclassified" text is displayed on the screen
    And I should verify "Possible Results" text is displayed on the screen
    And I should verify "Normal Sinus ECG Rhythm" text is displayed on the screen
    And I should verify "Atrial Fibrillation Detected" text is displayed on the screen
    And I should verify "Unclassified ECG" text is displayed on the screen
    And I should verify "Poor Quality ECG" text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    #verify Heart murmur screen
    When I tap on the "Next" button
    Then I should verify "Heart Murmurs" title is displayed on the screen
    And I should verify "Uses heart sounds to detect the presence of murmurs" text is displayed on the screen
    And I should verify "Does not classify types of murmurs" text is displayed on the screen
    And I should verify "Does not detect certain soft murmurs" text is displayed on the screen
    And I should verify "Possible Results" text is displayed on the screen
    And I should verify "Murmur Detected" text is displayed on the screen
    And I should verify "No Murmur Detected" text is displayed on the screen
    And I should verify "Poor Quality PCG" text is displayed on the screen
    And I should verify "Next" button is displayed on the screen
    When I tap on "Next" button
    #verify IFU screen
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "The Eko Analysis Software is intended to provide support to the physician in the evaluation of patients' heart sounds and ECG’s. The software analyzes simultaneous ECG and heart sounds. The software will detect the presence of suspected murmurs in the heart sounds. The software also detects the presence of atrial fibrillation and normal sinus rhythm from the ECG signal. In addition, it calculates certain cardiac time intervals such as heart rate and QRS duration." "It is not intended as a sole means of diagnosis. The interpretations of heart sounds and ECG offered by the software are only significant when used in conjunction with physician over-read and is for use on adults (> 18 years).""By continuing your use of the application, you acknowledge the following:""You have read and understand the Eko Analysis Software Indications for Use and Instructions for Use.""The Eko Analysis Software is to be used by, or under the supervision of, a healthcare professional who is trained to use, interpret, and understand its outputs." text is displyed on the screen
    When I swipe up the screen
    Then I should verify "Instructions for Use" linked text is displayed on the screen
    When I tap on the "Instructions for Use" linked text on the "Eko Analysis Indications for Use" screen 
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    When I close the web view
    Then I should verify "Eko Analysis Indications for Use" title is displayed on the screen
    And I should verify "I have read and understood the above Indications for Use" checkbox is displayed on the screen
    And I should verify "Back" label button displayed on the screen
    When I select "I have read and understood the above Indications for Use" checkbox
    Then I should verify "Next" button is enabled
    When I tap on "Next" button
    Then I should verify "Great!" text is displayed on the drawer
    And I should verify "Now let’s listen to body sounds. Place your Eko device on the body to get started." text is displayed on the drawer
    And I should verify "OK" button is displayed on the drawer

  @BDDTEST-QA-3617
  @CORE500
  @Clinic_Automation
  @Integration_Test
  Scenario: Verify Analysis and Auto record is enabled by default for FTU
    Given I am on the "Eko" screen
    When I tap on the "Create Account" button
    And I enter a randomly generated "First Name" on the "Create Account" screen
    And I enter a randomly generated "Last Name" on the "Create Account" screen
    And I enter a randomly generated "Email" on the "Create Account" screen
    And I enter the "eko12345" in the text field "Password" on the "Create Account" screen
    And I tap on the "Create Account" button
    And I complete the "CORE 500" onboarding
    And I complete "App Onboarding" for FTU user
    Then I should verify "Welcome" text is displayed on the screen
    When I tap on "Menu" navigation button
    Then I should verify "Recording Analysis" toggle is enabled
    And I should verify "Record Automatically" toggle is disabled

  @BDDTEST-QA-3618
  Scenario: Return User Onboarding screens


  @BDDTEST-QA-3627
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: To verify the UI of core-500 device onboarding step for ECG placement tips
    Given I enter  the "testekohealth+onboarding@gmail.com" in the text field "Email" on the "Login" Screen
    And I enter  the "12345678" in the text field "Password" on the "Login" Screen
    And I tap on the "Log In" button
    And I tap on the "CORE 500 Digital Stethoscope" card
    When I tap on the "Next" button
    #I tap on the "Next" button 4 times
    Then I should verify "Tips for a good signal" title is displayed on the screen
    And I should verify "Place the CORE 500™ firmly on the patient’s skin. Clean the skin with 70% IPA. ECG gel is recommended for dry/hairy skin." test is displayed on the screen
    And I should verify "Finish" button is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    And I should verify "Not Connected" status is displayed on the header
    When I turn on the device
    Then I should verify "Connected" status is displayed on the header

  @BDDTEST-QA-3629
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: To verify redirection flow of core-500 device onboarding step for ECG placement tips
    Given I enter  the "testekohealth+onboarding@gmail.com" in the text field "Email" on the "Login" Screen
    And I enter  the "12345678" in the text field "Password" on the "Login" Screen
    And I tap on the "Log In" button
    And I tap on the “CORE 500 Digital Stethoscope” card
    When I tap on the "Next" button
    #I tap on the "Next" button 4 times
    Then I should verify "Tips for a good signal" title is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "Start a recording" title is displayed on the screen
    When I tap on the "Next" button
    And I should verify "Tips for a good signal" title is displayed on the screen
    And I tap on the "Finish" button
    Then I should verify "Welcome to Eko" text is displayed on the screen

  @BDDTEST-QA-3672
  @CORE500
  @Clinic_Automation
  @Integration_Test
  Scenario: To verify, user update app from below 4.0.0 / 5.2.0 to 4.0.0/v5.2.0 or above
    #need to check for below 4.0.0(Android)/ v5.2.0(iOS)
        Given I install the clinic 3.6.0/ 4.9.0 app
        When I login as a clinician
        And I completed Core onboarding 
        And I connect the device
        And I update the app to 4.0.0/5.2.0
        And I open the app
        Then I should verify "What's New" header should be displayed on the screen
        And I should verify "What's New" text is displayed on the screen
        When I tap on the "Learn more" button
        Then I should verify "Start recording or exam" header is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        And I should verify "Tap Record to take a single recording. Tap Start Exam to take a guided, 4-point cardiac exam." text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Turn on wireless listening" header is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        And I should verify "Tap the Audio Settings icon. Turn on Play from Headphones." text is displayed on the screen
        When I tap the "Next" button
        Then I should verify "Adjust settings" header is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        And I should verify "Recording Analysis is on by default and requires a 15-second recording. Turn on Record Automatically to have recordings start when a good signal is detected." text is displayed on the screen
        And I should verify "Not Connected" status is displayed on the header
        And I tap on the "Next" button
        Then I should verify "Welcome" text is displayed on the screen
        And I should verify "Turn on your Eko device to get started." text is displayed on the screen
        And I tap on the "Menu" navigation button
        Then I should verify "Recording Analysis" toggle is "enabled"
        And I should verify "Record Automatically" toggle is "disabled"

  @BDDTEST-QA-3697
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: From the menu screen, verify the CORE_2 device onboarding flow
    Given I am logged in as a clinician
        And I tap on the "Menu" navigation button
        # Turn on the core_2
        And I turn the device on
        When I tap on the "connect" button
        Then I should verify "Scanning for devices..." text is displayed on the screen
        And I should verify "Choose your Eko Device to Connect" title is displayed on the screen
        When I tap on the "CORE_2" from device selection screen
        Then I should verify "Connected" status is displayed on the header
        And I should verify "Device Onboarding" header is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        And I should verify "Power on your CORE" title is displayed on the screen
        And I should verify "Press the power toggle on the front to turn your CORE on and off. A blinking light indicates your CORE is on" text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Start or stop recordings" title is displayed on the screen
        And I should verify "Push the center button to start a recording. Push it again to stop a recording" text is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Adjusting the volume" title is displayed on the screen
        And I should verify "Press the PLUS(+) to increase volume or press the MINUS (-) to decrease volume." text is displayed on the screen
        When I tap on the "Finish" button
        Then I should verify "Listen" header is displayed on the screen
        And I should verify waveform is displayed on the screen

  @BDDTEST-QA-3698
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: From the listen screen, verify the CORE_2 device onboarding flow
    Given I am logged in as a clinician
        And I tap on the "Listen" navigation button
        # Turn on the core_2
        And I turn the device on
        When I tap on the "connect Device" button
        Then I should verify "Scanning for devices..." text is displayed on the screen
        And I should verify "Choose your Eko Device to Connect" title is displayed on the screen
        When I tap on the "CORE_2" from device selection screen
        Then I should verify "Connected" status is displayed on the header
        And I should verify "Device Onboarding" header is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        And I should verify "Power on your CORE" title is displayed on the screen
        And I should verify "Press the power toggle on the front to turn your CORE on and off. A blinking light indicates your CORE is on" text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Start or stop recordings" title is displayed on the screen
        And I should verify "Push the center button to start a recording. Push it again to stop a recording" text is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Adjusting the volume" title is displayed on the screen
        And I should verify "Press the PLUS(+) to increase volume or press the MINUS (-) to decrease volume." text is displayed on the screen
        When I tap on the "Finish" button
        Then I should verify "Listen" header is displayed on the screen
        And I should verify waveform is displayed on the screen

  @BDDTEST-QA-3701
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: From the menu screen, verify the DUO_2 device onboarding flow
    Given I am logged in as a clinician
        And I tap on the "Menu" navigation button
        # Turn on the duo_2
        And I turn the device on
        When I tap on the "connect" button
        Then I should verify "Scanning for devices..." text is displayed on the screen
        And I should verify "Choose your Eko Device to Connect" title is displayed on the screen
        When I tap on the "DUO_2" from device selection screen
        Then I should verify "Connected" status is displayed on the header
        And I should verify "Device Onboarding" header is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        And I should verify "Power on your DUO" title is displayed on the screen
        And I should verify "Press the center button for 1 second. The lights will blink when the DUO is on. Press again for 2 seconds to power off." text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "About the DUO filters" title is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        And I should verify "The DUO has 4 unique audio filters. Press the center button 3 times to cycle through the filters." text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Adjusting the volume" title is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        And I should verify "Adjust the body sound amplification by pressing the top to increase volume or pressing the bottom to decrease the volume." text is displayed on the screen
        When I tap on the "Finish" button
        Then I should verify "Listen" header is displayed on the screen
        And I should verify waveform is displayed on the screen

  @BDDTEST-QA-3702
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: From the listen screen, verify the DUO_2 device onboarding flow
    Given I am logged in as a clinician
        And I tap on the "Listen" navigation button
        # Turn on the DUO_2
        And I turn the device on
        When I tap on the "Connect Device" button
        Then I should verify "Scanning for devices..." text is displayed on the screen
        And I should verify "Choose your Eko Device to Connect" title is displayed on the screen
        When I tap on the "DUO_2" from device selection screen
        Then I should verify "Connected" status is displayed on the header
        And I should verify "Device Onboarding" header is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        And I should verify "Power on your DUO" title is displayed on the screen
        And I should verify "Press the center button for 1 second. The lights will blink when the DUO is on. Press again for 2 seconds to power off." text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "About the DUO filters" title is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        And I should verify "The DUO has 4 unique audio filters. Press the center button 3 times to cycle through the filters." text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Adjusting the volume" title is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        And I should verify "Adjust the body sound amplification by pressing the top to increase volume or pressing the bottom to decrease the volume." text is displayed on the screen
        When I tap on the "Finish" button
        Then I should verify "Listen" header is displayed on the screen
        And I should verify waveform is displayed on the screen

  @BDDTEST-QA-3705
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: From the menu screen , verify the CORE-500 device onboarding flow
    Given I am logged in as a clinician
          And I tap on the "Menu" navigation button
        # Turn on the core_500
          And I turn the device on
          When I tap on the "connect" button
          Then I should verify "Scanning for devices..." text is displayed on the screen
          And I should verify "Choose your Eko Device to Connect" title is displayed on the screen
          When I tap on the "CORE-500" from device selection screen
          Then I should verify "Connected" status is displayed on the header
          And I should verify "Device Onboarding" header is displayed on the screen
          And I should verify "Skip" button is displayed on the screen
          And I should verify "Attach earpiece" title is displayed on the screen
          And I should verify "Plug the earpiece into the CORE 500™.Twist the earpiece clockwise with a quarter turn until it locks." text is displayed on the screen
          And I should verify "Skip" button is displayed on the screen
          When I tap on the "Next" button
          Then I should verify "Turn on to connect" title is displayed on the screen
          And I should verify "Press the top button to turn on the CORE 500™.Press the side button to connect to your mobile device via Bluetooth." text is displayed on the screen
          And I should verify "Back" label button is displayed on the screen
          When I tap on the "Next" button
          Then I should verify "Change audio filter" title is displayed on the screen
          And I should verify "Press the top button to change between each filter. It will change between cardiac, pulmonary, and wide." text is displayed on the screen
          When I tap on the "Next" button
          Then I should verify "Adjust volume" title is displayed on the screen
          And I should verify "To increase volume, press the volume up button.To decrease volume, press the volume down button." text is displayed on the screen
          Then I tap on the "Next" button
          And I should verify "Start a recording" title is displayed on the screen
          And I should verify "When ready to record, long-press the top button. Then long-press it again to stop the recording." text is displayed on the screen
          When I tap on the "Next" button
          Then I should verify "Tips for a good signal" title is displayed
          And I should verify the "Place the CORE 500TM firmly on the patient's skin to geta clean ECG signal. The audio filter icon should be at the top, facing up." text is displayed on the screen
          When I tap on the "Finish" button
          Then I should verify "Listen" header is displayed on the screen
          And I should verify waveform is displayed on the screen

  @BDDTEST-QA-3706
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: From the listen screen , verify the CORE-500 device onboarding flow
    Given I am logged in as a clinician
        And I tap on the "Listen" navigation button
        # Turn on the core_500
        And I turn the device on
        When I tap on the "connect Device" button
        Then I should verify "Scanning for devices..." text is displayed on the screen
        And I should verify "Choose your Eko Device to Connect" title is displayed on the screen
        When I tap on the "CORE-500" from device selection screen
        Then I should verify "Connected" status is displayed on the header
        And I should verify "Device Onboarding" header is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        And I should verify "Attach earpiece" title is displayed on the screen
        And I should verify "Plug the earpiece into the CORE 500™.Twist the earpiece clockwise with a quarter turn until it locks." text is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Turn on to connect" title is displayed on the screen
        And I should verify "Press the top button to turn on the CORE 500™.Press the side button to connect to your mobile device via Bluetooth." text is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Change audio filter" title is displayed on the screen
        And I should verify "Press the top button to change between each filter. It will change between cardiac, pulmonary, and wide." text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Adjust volume" title is displayed on the screen
        And I should verify "To increase volume, press the volume up button.To decrease volume, press the volume down button." text is displayed on the screen
        Then I tap on the "Next" button
        And I should verify "Start a recording" title is displayed on the screen
        And I should verify "When ready to record, long-press the top button. Then long-press it again to stop the recording." text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Placement Tip" title is displayed
        And I should verify the "Place the CORE 500TM firmly on the patient's skin to geta clean ECG signal. The audio filter icon should be at the top, facing up." text is displayed on the screen
        When I tap on the "Finish" button
        Then I should verify "Listen" header is displayed on the screen
        And I should verify waveform is displayed on the screen

  @BDDTEST-QA-3709
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: To verify the skip button functionality
    Given I am logged in as a clinician
        And I tap on the "Listen" navigation button
        # Turn on the core_500
        And I turn the device on
        When I tap on the "connect Device" button
        Then I should verify "Scanning for devices..." text is displayed on the screen
        And I should verify "Choose your Eko Device to Connect" title is displayed on the screen
        When I tap on the "CORE-500" from device selection screen
        Then I should verify "Connected" status is displayed on the header
        And I should verify "Device Onboarding" header is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        And I should verify "Attach earpiece" title is displayed on the screen
        And I should verify "Plug the earpiece into the CORE 500™.Twist the earpiece clockwise with a quarter turn until it locks." text is displayed on the screen
        When I tap on the "Skip" button
        Then I should verify "Listen" header is displayed on the screen
        And I should verify waveform is displayed on the screen

  @BDDTEST-QA-3710
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Kill the app during device onboarding
    Given I am logged in as a clinician
        And I tap on the "Listen" navigation button
        # Turn on the core_500
        And I turn the device on
        When I tap on the "connect Device" button
        Then I should verify "Scanning for devices..." text is displayed on the screen
        And I should verify "Choose your Eko Device to Connect" title is displayed on the screen
        When I tap on the "CORE-500" from device selection screen
        Then I should verify "Connected" status is displayed on the header
        And I should verify "Device Onboarding" header is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        And I should verify "Attach earpiece" title is displayed on the screen
        And I should verify "Plug the earpiece into the CORE 500™.Twist the earpiece clockwise with a quarter turn until it locks." text is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        When I killed the app
        And  I foreground the app
        Then should verify device is auto connected in the foreground
        And I should verify "Connected" status is displayed on the header
        And I should verify "Device Onboarding" header is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        And I should verify "Attach earpiece" title is displayed on the screen
        And I should verify "Plug the earpiece into the CORE 500™.Twist the earpiece clockwise with a quarter turn until it locks." text is displayed on the screen
        And I should verify "Skip" button is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Turn on to connect" title is displayed on the screen
        And I should verify "Press the top button to turn on the CORE 500™.Press the side button to connect to your mobile device via Bluetooth." text is displayed on the screen
        And I should verify "Back" label button is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Change audio filter" title is displayed on the screen
        And I should verify "Press the top button to change between each filter. It will change between cardiac, pulmonary, and wide." text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Adjust volume" title is displayed on the screen
        And I should verify "To increase volume, press the volume up button.To decrease volume, press the volume down button." text is displayed on the screen
        Then I tap on the "Next" button
        And I should verify "Start a recording" title is displayed on the screen
        And I should verify "When ready to record, long-press the top button. Then long-press it again to stop the recording." text is displayed on the screen
        When I tap on the "Next" button
        Then I should verify "Placement Tip" title is displayed
        And I should verify the "Place the CORE 500TM firmly on the patient's skin to geta clean ECG signal. The audio filter icon should be at the top, facing up." text is displayed on the screen
        When I tap on the "Finish" button
        Then I should verify "Listen" header is displayed on the screen
        And I should verify waveform is displayed on the screen
