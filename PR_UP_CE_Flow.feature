@BDDSTORY-QA-3570
@CORE500
Feature: PR_UP_CE_Flow CORE500
  Background:
    Given I am logged in as a clinician
    When I tap on the "Patients" navigation button
    And I tap on the "Unassigned" tab
    Then I should verify "Unassigned" tab is selected on the screen
    When I select "Exams" on the screen
    Then I should verify "Exams" filter is selected

  @BDDTEST-QA-2724
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Unit_Test
  Scenario: PR_UP_CE  Edit and Delete multiple recordings
    When I tap on the "Edit" button
    And I select recordings at positions "1,2,3"
    And I tap on the "Delete" button
    Then I should verify "Delete Recording" text is displayed on the dialog
    When I tap on the "Cancel" button on the dialog
    Then I should verify dialog disappears
    When I tap on the "Delete" button
    And I tap on the "Delete" button on the dialog
    Then I should verify "Unassigned" tab is selected on the screen

  

  @BDDTEST-QA-2756
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Unit_Test
  Scenario: PR_UP_CE Add stance from summary screen
    When I tap on the recording at position "1"
    Then I should verify "Select Patient Stance" title is displayed on the screen
    When I tap on the "Sitting" radio button
    Then I should verify that the "Sitting" radio button is "Selected"

  @BDDTEST-QA-2777
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Unit_Test
  Scenario: PR_UP_CE Edit Notes by swipe functionality
    When I tap on the recording at position "1"
    And I tap on the "Notes" button
    And I enter the "Automation Note1" on the description window
    And I tap on the notes done button
    Then I should verify "Automation Note1" text is displayed on the screen
    When I swipe the note at position "1" to edit the note
    And I enter the "Automation Note2" on the description window
    And I tap on the notes done button
    Then I should verify "Automation Note2" text is displayed on the screen

  

  @BDDTEST-QA-3571
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_UP_CE Edit and Create patients while assigning CORE500
    When I tap on the recording at position "1"
    And I store the date and time of the recording
    And I tap on the "Back" label button
    Then I should verify "Unassigned" tab is selected on the screen
    When I tap on the "Edit" label button
    And I tap on the recording at position "1"
    Then I should verify "Assign" button is displayed on the screen
    When I tap on the "Assign" button
    Then I should verify "Assign to a Patient" text is displayed on the screen
    When I tap on the "New Patient" tab
    And I enter a randomly generated "MRN" on the "Create New Patient" screen
    And I tap on the "Assign Patient" button
    Then I should verify "Unassigned" tab is selected on the screen
    When I tap on the "Assigned" tab
    And I enter the stored "MRN" value in the search field
    And I tap on the patient record at position "1"
    Then I should verify the date and time of the recording at position "1" is the same as stored with a difference of maximum "2" minutes

  @BDDTEST-QA-3572
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_UP_CE Edit and Delete multiple recordings CORE500
    When I tap on the "Edit" button
    And I select recordings at positions "1,2,3,4,5"
    And I tap on the "Delete" button
    Then I should verify "Delete Recording" text is displayed on the dialog
    When I tap on the "Cancel" button on the dialog
    Then I should verify dialog disappears
    When I tap on the "Delete" button
    And I tap on the "Delete" button on the dialog
    Then I should verify "Unassigned" tab is selected on the screen


  @BDDTEST-QA-3575
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_UP_CE Add multiple notes from summary patients list CORE500
    When I tap on the recording at position "1"
    And I store the date and time of the recording
    Then I should verify "Notes" button is displayed on the screen
    When I tap on the "Notes" button
    And I enter the "Automation Note1" on the description window
    And I tap on the notes done button
    Then I should verify "Automation Note1" text is displayed on the screen
    When I tap on the "Add Note" button
    And I enter the "Automation Note2" on the description window
    And I tap on the notes done button
    Then I should verify "Automation Note2" text is displayed on the screen
    And I should verify "Automation Note1" text is displayed on the screen

  @BDDTEST-QA-3576
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_UP_CE Delete the recording from CE Summary screen CORE500
    When I tap on the recording at position "1"
    And I tap on the "Delete" button
    Then I should verify "Delete Recording" title is displayed on the alert
    When I tap on the "Delete" button on the alert
    Then I should verify "Unassigned" tab is selected on the screen

  @BDDTEST-QA-4212
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Unit_Test
  Scenario: PR_UP_CE : Verify playback screen of 3 ECG and 1 PCG recording
    When I tap on the recording at position "1"
    Then I should verify "Assign" button is displayed on the screen
    #Verify RUSB playback screen
    When I tap on the "RUSB" link
    Then I should verify "RUSB" title is displayed on the screen
    And I should verify "Share" button is displayed on the screen
    When I tap the "Playback" button
    Then I should verify waveform is moveable
    And I should verify "Playback" title is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    And I should verify "Audio" button is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "RUSB" title is displayed on the screen
    #Verify LUSB playback screen
    When I tap on the "LUSB" link
    Then I should verify "LUSB" title is displayed on the screen
    And I should verify "Share" button is displayed on the screen
    When I tap the "Playback" button
    Then I should verify waveform is moveable
    And I should verify "Playback" title is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    And I should verify "Audio" button is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "LUSB" title is displayed on the screen
    #Verify LLSB playback screen
    When I tap on the "LLSB" link
    Then I should verify "LLSB" title is displayed on the screen
    And I should verify "Share" button is displayed on the screen
    When I tap the "Playback" button
    Then I should verify waveform is moveable
    And I should verify "Playback" title is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    And I should verify "Audio" button is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "LLSB" title is displayed on the screen
    #Verify APEX playback screen
    When I tap on the "APEX" link
    Then I should verify "APEX" title is displayed on the screen
    And I should verify "Share" button is displayed on the screen
    When I tap the "Playback" button
    Then I should verify waveform is moveable
    And I should verify "Playback" title is displayed on the screen
    And I should verify "Back" label button is displayed on the screen
    And I should verify "Audio" button is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "APEX" title is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "Exam" label button is displayed on the screen
    When I tap on the "Back" label button
    Then I should verify "Patient Recordings" title is displayed on the screen
