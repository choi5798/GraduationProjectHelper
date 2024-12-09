# deprecated -> ./gradlew bootBuildImage
FROM openjdk:17-slim
COPY build/native/nativeCompile/spring-graalvm /app/spring-graalvm
RUN chmod +x /app/spring-graalvm
ENTRYPOINT ["/app/spring-graalvm"]
