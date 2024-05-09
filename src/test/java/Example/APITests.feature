Feature: API Tests
  Background:
    * url 'https://reqres.in/api/users'

  Scenario: Basic test with status code validation
    When method GET
    Then status 200

  Scenario: Get Page 2
    And param page = 2
    When method GET
    Then status 200

  Scenario: Get User 2
    Given path '/2'
    When method get
    Then status 200
    And match response.data.id == 2
    And match response.data.email == 'janet.weaver@reqres.in'
    And match response.data.first_name == 'Janet'
    And match response.data.last_name == 'Weaver'

  Scenario: Create User
    Given request { name: 'morpheus', job: 'leader' }
    When method POST
    Then status 201
    And match response.name == 'morpheus'
    And match response.job == 'leader'

  Scenario: Update User
    Given path '2'
    And request { name: 'morpheus', job: 'zion resident' }
    When method PUT
    Then status 200
    And match response.name == 'morpheus'
    And match response.job == 'zion resident'

  Scenario: Delete User
    Given path '2'
    When method DELETE
    Then status 204

