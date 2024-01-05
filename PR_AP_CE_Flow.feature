@BDDSTORY-QA-3562
@CORE500
Feature: PR_AP_CE_Flow_CORE_500
  Background:
    Given I am logged in as a clinician
    When I tap on the "Patients" navigation button
    And I search the last created patient
    And I tap on the patient record at position "1"
    And I select "Exams" on the screen
    Then I should verify "Exams" filter is selected


  @BDDTEST-QA-3563
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_AP_CE Recording Review UI CORE500
    When I tap on the recording at position "1"
    Then I should verify "Back" label button is displayed on the screen
    And I should verify "Reassign" button is displayed on the screen
    And I should verify "Exam" title is displayed on the screen
    And I should verify date and time is displayed on the screen
    And I should verify "Exam Findings" text is displayed on the screen
    And I should verify "RUSB" text is displayed on the screen
    And I should verify "LUSB" text is displayed on the screen
    And I should verify "LLSB" text is displayed on the screen
    And I should verify "APEX" text is displayed on the screen
    And I should verify "Share" button is displayed on the screen
    And I should verify "Notes" button is displayed on the screen
    And I should verify "Delete" button is displayed on the screen
    And I should verify "Select Patient Stance" text is displayed on the screen
    And I should verify "Standing" radio button is displayed on the screen
    And I should verfiy "Sitting" radio button is displayed on the screen
    And I should verfiy "Supine" radio button is displayed on the screen

  @BDDTEST-QA-3564
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_AP_CE Reassign to Existing patient CORE500
    When I tap on the recording at position "1"
    And I store the date and time of the recording
    Then I should verify "Reassign" button is displayed on the screen
    When I tap on the "Reassign" button
    Then I should verify "Assign to a Patient" title is displayed on the screen
    When I enter the "prapce" in the search field
    And I tap on the patient record at position "2"
    Then I should verify "Exams" filter is selected
    When I tap on the "Back" label button
    And I enter the "prapce" in the search field
    And I tap on the patient record at position "1"
    When I select "Exams" on the screen
    Then I should verify "Exams" filter is selected
    And I should verify the date and time of the recording at position "1" is the same as stored with a difference of maximum "5" minutes

  @BDDTEST-QA-3565
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_AP_CE Reassign to New patient CORE500
    When I tap on the recording at position "1"
    And I store the date and time of the recording
    Then I should verify "Reassign" button is displayed on the screen
    When I tap on the "Reassign" button
    Then I should verify "Assign to a Patient" title is displayed on the screen
    When I tap on the "New Patient" tab
    And I enter a randomly generated "MRN" on the "Create New Patient" screen
    And I tap on the "Assign Patient" button
    Then I should verify "Exams" filter is selected
    When I tap on the "Back" label button
    And I enter the stored "MRN" value in the search field 
    And I tap on the patient record at position "1"
    Then I should verify the date and time of the recording at position "1" is the same as stored with a difference of maximum "2" minutes

  @BDDTEST-QA-3566
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_AP_CE Add multiple notes from summary screen CORE500
    When I tap on the recording at position "1"
    Then I should verify "Reassign" button is displayed on the screen
    When I tap on the "Notes" button
    When I enter the "Automation Note1" on the description window
    When I tap on the notes done button
    Then I should verify "Automation Note1" text is displayed on the screen
    When I tap on the "Add Note" label button
    And I enter the "Automation Note2" on the description window
    When I tap on the notes done button
    Then I should verify "Automation Note2" text is displayed on the screen
    And I should verify "Automation Note1" text is displayed on the screen
    And I should verify timestamp is displayed as "MM/dd/yy hh:mm a" format for the note at position "1"

 
  @BDDTEST-QA-3569
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_AP_CE add stance to the assigned exam CORE500
    When I tap on the recording at position "1"
    Then I should verify "Reassign" button is displayed on the screen
    When I tap on the "Sitting" radio button
    Then I should verify "Sitting" radio button is displayed on the screen

  @BDDTEST-QA-4210
  @CLINIC3.0_Automation
  @CORE500
  Scenario: PR_AP_CE : Verify playback screen of 3 ECG and 1 PCG recording
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
