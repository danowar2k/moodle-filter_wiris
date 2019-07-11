@filter @filter_wiris
Feature: Check default parameters in configurationjs.php page are correct

  Background:
    Given the following config values are set as admin:
      | config | value | plugin |
      | access_provider_enabled | 1 | filter_wiris |

  @javascript
  Scenario: Check if default parameters in configurationjs.php page are correct
    And I log in as "admin"
    And I enable Mathtype filter
    And I go to link "/filter/wiris/integration/configurationjs.php"
    Then "\"editorEnabled\":true" "text" should exist
    Then "\"saveMode\":\"safeXml\"" "text" should exist
    Then "Forgotten your username" "text" should not exist