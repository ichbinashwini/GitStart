@BDDSTORY-QA-3244
@CORE500
Feature: CORE500_CE_Recording Flow_Automation
  Background:
    Given I am logged in as a clinician
    When I tap on the "Listen" navigation button
    Then I should verify "Start Exam" button is displayed on the screen


  @BDDTEST-QA-3245
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Integration_Test
  Scenario: CE Audio Settings UI with CORE 500
    When I tap on the "Audio" button
    Then I should verify "Audio Settings" title is displayed on the drawer
    And I should verify "Use high-quality headphones for optimal heart sounds as audio may play back poorly on your system speakers." text is displayed on the drawer
    And I should verify "Play from Headphones" toggle is displayed on the screen
    When I enable the "Play from Headphones" toggle
    Then I should verify "Volume Boost" text is displayed on the screen
    When I set the volume boost level to "6"
    Then I should verify "For optimal performance, be sure to adjust your phone's volume when adjusting the volume boost." text is displayed on the screen
    And I should verify volume boost level is set to "6"

  @BDDTEST-QA-3246
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Integration_Test
  Scenario: CE Take recording from summary screen with CORE500
    When I tap on the "Start Exam" button
    Then I should verify "Place the DUO at the RUSB" text is displayed on the screen
    When I wait for "30" seconds
    Then I should verify "Place the DUO at the LUSB" text is displayed on the screen
    When I tap on the "End Exam" label button
    Then I should verify "Take Recording" text is displayed on the screen
    When I tap on the "Take Recording" label button on the screen
    And I wait for "30" seconds
    Then I should verify "Assign" button is displayed on the screen

  @BDDTEST-QA-3247
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Integration_Test
  Scenario: CE End Exam on first position screen
    When I tap on the "Start Exam" button
    Then I should verify "Place the DUO at the RUSB" text is displayed on the screen
    When I wait for "10" seconds 
    And I should verify "Recording. Hold still." text is displayed on the screen
    When I tap on the "End Exam" label button
    Then I should verify "Start Exam" button is displayed on the screen

  @BDDTEST-QA-3248
  @CLINIC3.0_Automation
  @CORE500
  @High
  @Integration_Test
  Scenario: CE End Exam when skip first position
    When I tap on the "Start Exam" button
    Then I should verify "Place the DUO at the RUSB" text is displayed on the screen
    When I tap on the "Skip Position" button
    Then I should verify "Place the DUO at the LUSB" text is displayed on the screen
    When I tap on the "Skip Position" button
    Then I should verify "Place the DUO at the LLSB" text is displayed on the screen
    When I wait for "10" seconds
    And I should verify "Recording. Hold still" text is displayed on the screen
    When I tap on the "End Exam" label button
    Then I should verify "Start Exam" button is displayed on the screen
