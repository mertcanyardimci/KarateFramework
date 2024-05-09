FROM openjdk:11-jre-slim

WORKDIR /karate-tests

# Kopyala ve paketleme
COPY . .

# Testleri çalıştır
CMD ["java", "-jar", "karate.jar", "APITest.feature"]


