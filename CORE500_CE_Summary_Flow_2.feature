@BDDSTORY-QA-3252
@CORE500
Feature: CORE500_CE_Summary_Flow_Automation 
  Background:
    Given I am logged in as a clinician
    And I complete FTU onboarding
    And I should verify "Listen" title is displayed on the screen
    When I tap on the "Start Exam" button
    Then I should verify "Place the DUO at the RUSB" text is displayed on the screen
    When I wait for "30" seconds
    And I should verify "Place the DUO at the LUSB" text is displayed on the screen
    When I tap on the "End Exam" label button
    Then I should verify "Exam" title is displayed on the screen
    And I wait for "10" seconds

  @BDDTEST-QA-3253
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: CE summary Screen UI with CORE500
    Then I should verify "Assign" button is displayed on the screen
    And I should verify "Unassigned" text is displayed on the screen
    And I should verify date and time is displayed on the screen
    And I should verify "Exam Findings" text is displayed on the screen
    And I should verify "RUSB" text is displayed on the screen
    And I should verify "LUSB" text is displayed on the screen
    And I should verify "LLSB" text is displayed on the screen
    And I should verify "Apex" text is displayed on the screen
    And I should verify "Take Recording" text is displayed on the screen
    And I should verify "BPM" text is displayed on the screen
    And I should verify "Select Patient Stance" text is displayed on the screen
    Then I should verify "Standing" radio button is displayed on the screen
    And I should verify "Sitting" radio button is displayed on the screen
    And I should verify "Supine" radio button is displayed on the screen
    And I should verify "Learn more about these findings" label button is displayed on the screen
    And I should verify "These results are not diagnosis, only a possible finding.Record and analyze all auscultation positions before making a diagnsois." text is displayed on the screen
    And I should verify "End Exam" button is displayed on the screen
    And I should verify "Share" button is displayed on the screen
    And I should verify "Notes" button is displayed on the screen

  @BDDTEST-QA-3254
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: CE delete a position recording from playback screen with CORE500
    When I tap on the "RUSB" link 
    Then I should verify "RUSB" title is displayed on the screen
    And I should verify "Unassigned" text is displayed on the screen
    And I should verify date and time is displayed on the screen
    And I should verify waveform is displayed on the screen
    And I should verify "00:00" button is displayed on the screen
    And I should verify "Delete" button is displayed on the screen
    When I tap on the "Delete" button
    Then I should verify "Delete Recording" text is displayed on the dialog
    When I tap on the "Cancel" button
    Then I should verify "RUSB" title is displayed on the screen
    When I tap on the "Delete" button
    And I tap on the "Delete" button on the dialog
    Then I should verify "Cardiac Exam" title is displayed on the screen

  @BDDTEST-QA-3255
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: CE edit notes from summary screen with CORE500
    When I tap on the "Notes" button
    And I enter the "automationNote1" on the description window
    And I tap on the notes done button
    Then I should verify "automationNote1" text is displayed on the screen
    When I swipe the note at position "1" to edit the note
    And I tap on the "Edit" button
    And I enter the "automationNote2" on the description window
    Then I should verify "automationNote2" text is displayed on the screen
    When I tap on the notes done button
    Then I should verify timestamp is displayed as "MM/DD/YY hh:mm" format for the note at position "1"

  @BDDTEST-QA-3256
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Create a patient while reassigning on the summary screen with CORE500
    Then I should verify "Assign" button is displayed on the screen
    When I tap on the "Assign" button
    And I tap on the "New Patient" tab
    And I enter the "cesummary" in the text field "First Name" on the "Ceate New Patient" screen
    And I tap on the "Assign Patient" button
    Then I should verify "cesummary" text is displayed on the screen
    When I tap on the "Reassign" button
    Then I should verify "Assign to a Patient" title is displayed on the screen
    When I tap on the "New Patient" tab
    And I enter a randomly generated "MRN" on the "Ceate New Patient" screen
    When I tap on the "Assign Patient" button
    Then I should verify stored "MRN" is displayed on the screen
    When I store the date and time of the recording
    And I tap on the "End Exam" button
    And I tap on the "Patients" navigation button
    And I enter the stored "MRN" value in the search field   
    When I tap on the patient record at position "1"
    Then I should verify the date and time of the recording at position "1" is the same as stored with a difference of maximum "2" minutes

  @BDDTEST-QA-3257
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Assign patient from summary screen with CORE500
    When I tap on the "Assign" button
    And I tap on the "New Patient" tab
    Then I should verify "Create New Patient" text is displayed on the screen
    When I enter a randomly generated "MRN" on the "Create New Patient" screen
    And I tap on the "Assign Patient" button
    Then I should verify stored "MRN" is displayed on the screen
    When I store the date and time of the Exam
    And I tap on the "End Exam" button
    And I tap on the "Patients" navigation button
    And I enter the stored "MRN" value in the search field 
    And I tap on the patient record at position "1"
    Then I should verify stored "MRN" is displayed on the screen
    And I should verify the date and time of the recording at position "1" is the same as stored with a difference of maximum "5" minutes

  @BDDTEST-QA-3258
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: CE select patient stance from summary screen with CORE500
    Then I should verify "End Exam" button is displayed on the screen
    When I tap on the "Supine" radio button
    Then I should verify that the "Supine" radio button is "Selected"
    When I tap on the "End Exam" button
    And I tap on the "Patients" navigation button
    And I tap on the "Unassigned" tab
    And I tap on the recording at position "1"
    Then I should verify "Supine" text is displayed on the screen

  @BDDTEST-QA-3260
  @CORE500
  @Clinic_Automation
  @High
  @Integration_Test
  Scenario: Delete Notes from summary screen with CORE500
    When I tap on the "Notes" button
    And I enter the "Automation Note1" on the description window 
    And I tap on the notes done button
    And I swipe the note at position "1" to delete the note
    And I tap on the "Delete" button on the dialog
    Then I should verify "End Exam" button is displayed on the screen
