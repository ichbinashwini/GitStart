@BDDSTORY-QA-3153
@CORE500
Feature: Single Recording  Flow with Analysis Off(Automation)
  Background:
    Given I am logged in as a clinician
    And I tap on the "Disconnect" button
    And I tap on the "Connect" button
    And I tap on the "CORE 500" from device selection screen
    And I complete in-app onboarding 
    Then I should verify "Connected" status is displayed on the header
    And I should verify "Listen" title is displayed on the screen

  @BDDTEST-QA-3173
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Integration_Test
  Scenario: verify that user is able to take the recording in Pulmonary mode, when the AI is disabled 
    #precondition - analysis should be disabled so the Audio filter mode should be pulmonary
    When I tap on the "Menu" navigation button
    Then I should verify "Connected" status is displayed on the header
    And I swipe up the screen
    When I tap on the "App Settings" option
    And I tap on the "Audio Filter" option
    And I tap on the "Pulmonary" option
    Then I should verify "Pulmonary" text is displayed on the screen
    When I tap on the "Back" label button
    And I tap on the "Listen" navigation button
    Then I should verify "Record" button is displayed on the screen
    And I should verify "Start Exam" button is not displayed on the screen
    When I tap on the "Record" button
    And I wait for "15" seconds
    Then I should verify "Unassigned" text is displayed on the screen

  @BDDTEST-QA-3228
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Integration_Test
  Scenario: Verify that user is able to take Single recording in Wide mode, while AI is disabled
    #precondition - analysis should be disabled so the Audio filter mode should be wide
    When I tap on the "Menu" navigation button
    Then I should verify "Connected" status is displayed on the header
    And I swipe up the screen
    When I tap on the "App Settings" option
    And I tap on the "Audio Filter" option
    And I tap on the "Wide" option
    Then I should verify "Wide" text is displayed on the screen
    When I tap on the "Back" label button
    And I tap on the "Listen" navigation button
    Then I should verify "Record" button is displayed on the screen
    When I tap on the "Record" button
    And I should verify "Recording. Hold still." text is displayed on the screen
    And I wait for "15" seconds
    And I should verify "Recording" title is displayed on the screen
    Then I should verify "Unassigned" text is displayed on the screen

  @BDDTEST-QA-3230
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Integration_Test
  Scenario: Verify recording is NOT discarded, if the recording is stopped in less than 15 sec when AI is OFF
    When I tap on the "Menu" navigation button
    Then I should verify "Connected" status is displayed on the header
    When I tap on the "Listen" navigation button
    Then I should verify "Record" button is displayed on the screen
    When I tap on the "Record" button
    And I wait for "5" seconds
    And I tap on the "End Recording" button
    And I store the date and time of the recording
    Then I should verify "Done" button is displayed on the screen
    And I should verify "Recording" title is displayed on the screen
    When I tap on the "Done" button
    And I tap on the "Patients" navigation button
    And I tap on the "Unassigned" tab
    Then I should verify the date and time of the recording at position "1" is the same as stored with a difference of maximum "5" minutes

  @BDDTEST-QA-3231
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Integration_Test
  Scenario Outline: Verify recording with different recording lengths with Analysis OFF
    When I am on the "Menu" screen
    And I should verify "Connected" status is displayed on the header
    When I tap on the "App Settings" option
    And I swipe up the screen
    And I tap on the "Audio Filter" option
    And I tap on the "Wide" option
    Then I should verify "Wide" text is displayed on the screen
    When I tap on the "Recording Length" option
    And I tap on the "<time>" option
    Then I should verify "<time>" text is displayed on the screen
    When I tap on the "Back" label button
    And I tap on the "Listen" navigation button
    Then I should verify "Record" button is displayed on the screen
    When I tap on the "Record" button
    And I should verify "Recording. Hold still." text is displayed on the screen
    And I wait for "<time>" seconds
    And I should verify "Unassigned" text is displayed on the screen
    When I tap on the "Done" button
    Then I should verify "Record" button is displayed on the screen
    
    Examples:
      
    |  time   |
    | 15 sec. |
    | 30 sec. |
    | 60 sec. |
    | 90 sec. |
    | 120 sec.|

  @BDDTEST-QA-3236
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Integration_Test
  Scenario: Verify user is able to take Single recording in Cardiac mode while AI is disabled
    When I tap on the "Menu" navigation button
    Then I should verify "Connected" status is displayed on the header
    And I swipe up the screen
    When I tap on the "App Settings" option
    And I tap on the "Audio Filter" option
    And I tap on the "Cardiac" option
    Then I should verify "Cardiac" text is displayed on the screen
    When I tap on the "Back" label button
    And I tap on the "Listen" navigation button
    Then I should verify "Record" button is displayed on the screen
    When I tap on the "Record" button
    Then I should verify "Recoding. Hold still" text is displayed on the screen
    And I wait for "15" seconds 
    Then I should verify "Unassigned" text is displayed on the screen
    And I should verify "Recording" header is displayed on the screen


