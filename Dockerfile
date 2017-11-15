FROM openjdk:8-jdk
RUN git clone --depth 1 https://github.com/JetBrains/kotlin-native.git
WORKDIR kotlin-native
RUN ./gradlew dependencies:update
RUN ./gradlew dist
ENV PATH /kotlin-native/dist/bin:$PATH