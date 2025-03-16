Feature: Executable

  Scenario: Executable success
    When the executable is launched
    Then the executable should complete successfully
    And the executable should have output "INFO Invoking extension"
    And the executable should have output "INFO hello world"
