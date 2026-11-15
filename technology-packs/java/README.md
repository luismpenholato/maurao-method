# Java technology pack

## Discovery

Inspect `pom.xml`, `build.gradle`, `build.gradle.kts`, `gradlew`, `settings.gradle*`, Java toolchain declarations, module descriptors, test configuration, and CI before changing code.

Determine whether the project uses Java, Kotlin, or both, and identify the active build tool: Maven or Gradle. Do not assume Spring just because the project is Java.

## Engineering guidance

- Preserve the project's package, module, naming, and dependency-injection conventions.
- Respect the declared Java toolchain and compiler flags.
- Handle checked exceptions, resource ownership, interruption, and cancellation intentionally.
- Avoid blocking calls in reactive or asynchronous code paths.
- Keep public API and serialization changes backward compatible unless the specification says otherwise.
- Use immutable values and explicit nullability conventions where the project already supports them.

## Validation discovery

Typical commands are project-specific. Prefer the wrapper and scripts committed by the repository:

```text
./mvnw test
./mvnw verify
./gradlew test
./gradlew check
```

Run only commands supported by the project. Inspect profiles, modules, integration-test tasks, and required services before choosing the command.

## Common ecosystems

Spring Boot, Jakarta EE, Quarkus, Micronaut, JUnit, TestNG, Mockito, Testcontainers, Hibernate, Flyway, Liquibase, and OpenTelemetry are technology signals—not defaults. Verify their actual presence before loading a specialized skill.

