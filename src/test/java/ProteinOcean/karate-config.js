function fn() {
  var config = {
    karate: {
      feature: 'classpath:java/ProteinOcean/ProteinOcean.feature'
    }
  };
  return config;
}

//Run Command:mvn test -Dtest=TestRunner