function fn() {
  var config = {
    karate: {
      feature: 'classpath:java/Example/ProteinOcean.feature'
    }
  };
  return config;
}

//Run Command:mvn test -Dtest=TestRunner