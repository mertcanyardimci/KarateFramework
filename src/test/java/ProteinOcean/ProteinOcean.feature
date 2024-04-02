Feature: Protein Ocean

  Background:
    * url 'http://proteinocean.com'

  @login
  Scenario: User can log in
    Given path '/account/login'
    And request { email: 'mertcanyardimci97@gmail.com', password: 'Mertcan123.' }
    When method post
    Then status 200
    And match response contains 'Yönlendirme işlemi için lütfen bekleyiniz...'

  @search
  Scenario: Perform a Whey search
    Given path '/search'
    And param s = 'whey'
    When method get
    Then status 200
    And match response contains 'whey'

  @product
  Scenario: Whey Protein product opens
    Given path '/whey-protein'
    When method get
    Then status 200

  @flavor
  Scenario: Check Whey Protein flavor
    Given path '/whey-protein'
    And param aroma = 'biskuvi'
    When method get
    Then status 200
    And match response contains 'biskuvi'

  @size
  Scenario: Check Whey Protein size
    Given path '/whey-protein'
    And param boyut = '500'
    When method get
    Then status 200
    And match response contains '500'

  @page
  Scenario: Open Protein page
    Given path '/protein'
    When method get
    Then status 200
    And match response contains 'PROTEİN'

  @page
  Scenario: Open Spor Gıdaları page
    Given path '/spor-gidalari'
    When method get
    Then status 200
    And match response contains 'SPOR GIDALARI'

  @page
  Scenario: Open Sağlık page
    Given path '/saglik'
    When method get
    Then status 200
    And match response contains 'SAĞLIK'

  @page
  Scenario: Open Gıda page
    Given path '/gida'
    When method get
    Then status 200
    And match response contains 'GIDA'

  @page
  Scenario: Open Vitamin page
    Given path '/vitamin'
    When method get
    Then status 200
    And match response contains 'VİTAMİN'

  @page
  Scenario: Open Aksesuar page
    Given path '/aksesuar'
    When method get
    Then status 200
    And match response contains 'AKSESUAR'

  @page
  Scenario: Open Tüm Ürünler page
    Given path '/tum-urunler'
    When method get
    Then status 200
    And match response contains 'TÜM ÜRÜNLER'

  @page
  Scenario: Open Paketler page
    Given path '/paketler'
    When method get
    Then status 200
    And match response contains 'PAKETLER'

  @page
  Scenario: Open Fitness Paketi page
    Given path '/fitness-paketi'
    When method get
    Then status 200
    And match response contains 'FITNESS PAKETİ'

  @page
  Scenario: Open Lansman page
    Given path '/lansman'
    When method get
    Then status 200
    And match response contains 'LANSMANA ÖZEL FIRSATLAR'
